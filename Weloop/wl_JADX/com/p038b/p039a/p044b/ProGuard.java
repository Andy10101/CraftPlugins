package com.p038b.p039a.p044b;

import java.util.concurrent.Callable;

/* renamed from: com.b.a.b.d */
class ProGuard implements Callable<Void> {
    final /* synthetic */ ProGuard f2620a;

    ProGuard(ProGuard proGuard) {
        this.f2620a = proGuard;
    }

    public /* synthetic */ Object call() {
        return m3952a();
    }

    public Void m3952a() {
        synchronized (this.f2620a) {
            if (this.f2620a.f2614j == null) {
            } else {
                this.f2620a.m3942j();
                if (this.f2620a.m3940h()) {
                    this.f2620a.m3938g();
                    this.f2620a.f2616l = 0;
                }
            }
        }
        return null;
    }
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 }

        public void close() {
            synchronized (this.f2599b) {
                if (this.f2601d != null) {
                    this.f2601d = null;
                    this.f2599b.close();
                }
            }
        }

        public String m3917a() {
            String str;
            synchronized (this.f2599b) {
                if (this.f2601d == null) {
                    throw new IOException("LineReader is closed");
                }
                int i;
                if (this.f2602e >= this.f2603f) {
                    m3916b();
                }
                int i2 = this.f2602e;
                while (i2 != this.f2603f) {
                    if (this.f2601d[i2] == (byte) 10) {
                        int i3 = (i2 == this.f2602e || this.f2601d[i2 - 1] != 13) ? i2 : i2 - 1;
                        str = new String(this.f2601d, this.f2602e, i3 - this.f2602e, this.f2600c.name());
                        this.f2602e = i2 + 1;
                    } else {
                        i2++;
                    }
                }
                ByteArrayOutputStream proGuard = new ProGuard(this, (this.f2603f - this.f2602e) + 80);
                loop1:
                while (true) {
                    proGuard.write(this.f2601d, this.f2602e, this.f2603f - this.f2602e);
                    this.f2603f = -1;
                    m3916b();
                    i = this.f2602e;
                    while (i != this.f2603f) {
                        if (this.f2601d[i] == (byte) 10) {
                            break loop1;
                        }
                        i++;
                    }
                }
                if (i != this.f2602e) {
                    proGuard.write(this.f2601d, this.f2602e, i - this.f2602e);
                }
                proGuard.flush();
                this.f2602e = i + 1;
                str = proGuard.toString();
            }
            return str;
        }

        private void m3916b() {
            int read = this.f2599b.read(this.f2601d, 0, this.f2601d.length);
            if (read == -1) {
                throw new EOFException();
            }
            this.f2602e = 0;
            this.f2603f = read;
        }
    }

    private ProGuard(File file, int i, int i2, long j) {
        this.f2613i = 0;
        this.f2615k = new LinkedHashMap(0, 0.75f, true);
        this.f2617m = 0;
        this.f2605a = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
        this.f2618n = new ProGuard(this);
        this.f2619p = new ProGuard();
        this.f2606b = file;
        this.f2610f = i;
        this.f2607c = new File(file, "journal");
        this.f2608d = new File(file, "journal.tmp");
        this.f2609e = new File(file, "journal.bkp");
        this.f2612h = i2;
        this.f2611g = j;
    }

    public static ProGuard m3920a(File file, int i, int i2, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        } else {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    ProGuard.m3925a(file2, file3, false);
                }
            }
            ProGuard proGuard = new ProGuard(file, i, i2, j);
            if (proGuard.f2607c.exists()) {
                try {
                    proGuard.m3933e();
                    proGuard.m3937f();
                    proGuard.f2614j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(proGuard.f2607c, true), "US-ASCII"));
                    return proGuard;
                } catch (Throwable th) {
                    com.p038b.p039a.p055f.ProGuard.m4101a("DiskLruCache " + file + " is corrupt: " + th.getMessage() + ", removing", th);
                    proGuard.m3950c();
                }
            }
            if (!file.exists() && !file.mkdirs()) {
                return proGuard;
            }
            proGuard = new ProGuard(file, i, i2, j);
            proGuard.m3938g();
            return proGuard;
        }
    }

    private void m3933e() {
        Closeable proGuard;
        Throwable th;
        try {
            proGuard = new ProGuard(this, new FileInputStream(this.f2607c));
            int i;
            try {
                String a = proGuard.m3917a();
                String a2 = proGuard.m3917a();
                String a3 = proGuard.m3917a();
                String a4 = proGuard.m3917a();
                String a5 = proGuard.m3917a();
                if ("libcore.io.DiskLruCache".equals(a) && "1".equals(a2) && Integer.toString(this.f2610f).equals(a3) && Integer.toString(this.f2612h).equals(a4) && "".equals(a5)) {
                    i = 0;
                    while (true) {
                        m3934e(proGuard.m3917a());
                        i++;
                    }
                } else {
                    throw new IOException("unexpected journal header: [" + a + ", " + a2 + ", " + a4 + ", " + a5 + "]");
                }
            } catch (EOFException e) {
                this.f2616l = i - this.f2615k.size();
                com.p038b.p039a.p055f.ProGuard.m4094a(proGuard);
            } catch (Throwable th2) {
                th = th2;
                com.p038b.p039a.p055f.ProGuard.m4094a(proGuard);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            proGuard = null;
            com.p038b.p039a.p055f.ProGuard.m4094a(proGuard);
            throw th;
        }
    }

    private void m3934e(String str) {
        int indexOf = str.indexOf(32);
        if (indexOf == 1) {
            String str2;
            char charAt = str.charAt(0);
            indexOf++;
            int indexOf2 = str.indexOf(32, indexOf);
            if (indexOf2 == -1) {
                String substring = str.substring(indexOf);
                if (charAt == 'D') {
                    this.f2615k.remove(substring);
                    return;
                }
                str2 = substring;
            } else {
                str2 = str.substring(indexOf, indexOf2);
            }
            ProGuard proGuard = (ProGuard) this.f2615k.get(str2);
            if (proGuard == null) {
                proGuard = new ProGuard(str2, null);
                this.f2615k.put(str2, proGuard);
            }
            switch (charAt) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_listPreferredItemHeight /*67*/:
                    proGuard.f2590e = true;
                    proGuard.f2591f = null;
                    String[] split = str.substring(indexOf2 + 1).split(" ");
                    if (split.length > 0) {
                        try {
                            if (split[0].charAt(0) == 't') {
                                proGuard.f2588c = Long.valueOf(split[0].substring(1)).longValue();
                                proGuard.m3903a(split, 1);
                                return;
                            }
                            proGuard.f2588c = Long.MAX_VALUE;
                            proGuard.m3903a(split, 0);
                            return;
                        } catch (Throwable th) {
                            IOException iOException = new IOException("unexpected journal line: " + str);
                        }
                    } else {
                        return;
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_colorAccent /*82*/:
                    return;
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.Theme_colorControlHighlight /*85*/:
                    proGuard.f2591f = new ProGuard(proGuard, null);
                    return;
                default:
                    throw new IOException("unexpected journal line: " + str);
            }
        }
        throw new IOException("unexpected journal line: " + str);
    }

    private void m3937f() {
        ProGuard.m3924a(this.f2608d);
        Iterator it = this.f2615k.values().iterator();
        while (it.hasNext()) {
            ProGuard proGuard = (ProGuard) it.next();
            int i;
            if (proGuard.f2591f == null) {
                for (i = 0; i < this.f2612h; i++) {
                    this.f2613i += proGuard.f2589d[i];
                }
            } else {
                proGuard.f2591f = null;
                for (i = 0; i < this.f2612h; i++) {
                    ProGuard.m3924a(proGuard.m3911a(i));
                    ProGuard.m3924a(proGuard.m3913b(i));
                }
                it.remove();
            }
        }
    }

    private synchronized void m3938g() {
        Throwable th;
        if (this.f2614j != null) {
            com.p038b.p039a.p055f.ProGuard.m4094a(this.f2614j);
        }
        Closeable bufferedWriter;
        try {
            bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f2608d), "US-ASCII"));
            try {
                bufferedWriter.write("libcore.io.DiskLruCache");
                bufferedWriter.write("\n");
                bufferedWriter.write("1");
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f2610f));
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.f2612h));
                bufferedWriter.write("\n");
                bufferedWriter.write("\n");
                for (ProGuard proGuard : this.f2615k.values()) {
                    if (proGuard.f2591f != null) {
                        bufferedWriter.write("U " + proGuard.f2587b + '\n');
                    } else {
                        bufferedWriter.write("C " + proGuard.f2587b + " " + 't' + proGuard.f2588c + proGuard.m3912a() + '\n');
                    }
                }
                com.p038b.p039a.p055f.ProGuard.m4094a(bufferedWriter);
                if (this.f2607c.exists()) {
                    ProGuard.m3925a(this.f2607c, this.f2609e, true);
                }
                ProGuard.m3925a(this.f2608d, this.f2607c, false);
                this.f2609e.delete();
                this.f2614j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f2607c, true), "US-ASCII"));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedWriter = null;
            com.p038b.p039a.p055f.ProGuard.m4094a(bufferedWriter);
            throw th;
        }
    }

    private static void m3924a(File file) {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void m3925a(File file, File file2, boolean z) {
        if (z) {
            ProGuard.m3924a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public synchronized long m3943a(String str) {
        long j;
        String a = this.f2619p.m3887a(str);
        m3941i();
        ProGuard proGuard = (ProGuard) this.f2615k.get(a);
        if (proGuard == null) {
            j = 0;
        } else {
            j = proGuard.f2588c;
        }
        return j;
    }

    public File m3944a(String str, int i) {
        File file = new File(this.f2606b, this.f2619p.m3887a(str) + "." + i);
        if (file.exists()) {
            return file;
        }
        try {
            m3951d(str);
        } catch (IOException e) {
        }
        return null;
    }

    public ProGuard m3947b(String str) {
        return m3935f(this.f2619p.m3887a(str));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized com.p038b.p039a.p044b.ProGuard.ProGuard m3935f(java.lang.String r10) {
        /*
        r9 = this;
        r2 = 0;
        r1 = 0;
        monitor-enter(r9);
        r9.m3941i();	 Catch:{ all -> 0x0051 }
        r0 = r9.f2615k;	 Catch:{ all -> 0x0051 }
        r0 = r0.get(r10);	 Catch:{ all -> 0x0051 }
        r0 = (com.p038b.p039a.p044b.ProGuard.ProGuard) r0;	 Catch:{ all -> 0x0051 }
        if (r0 != 0) goto L_0x0012;
    L_0x0010:
        monitor-exit(r9);
        return r1;
    L_0x0012:
        r3 = r0.f2590e;	 Catch:{ all -> 0x0051 }
        if (r3 == 0) goto L_0x0010;
    L_0x0018:
        r4 = r0.f2588c;	 Catch:{ all -> 0x0051 }
        r6 = java.lang.System.currentTimeMillis();	 Catch:{ all -> 0x0051 }
        r3 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r3 >= 0) goto L_0x00a2;
    L_0x0024:
        r3 = r9.f2612h;	 Catch:{ all -> 0x0051 }
        if (r2 >= r3) goto L_0x006a;
    L_0x0028:
        r3 = r0.m3911a(r2);	 Catch:{ all -> 0x0051 }
        r4 = r3.exists();	 Catch:{ all -> 0x0051 }
        if (r4 == 0) goto L_0x0054;
    L_0x0032:
        r4 = r3.delete();	 Catch:{ all -> 0x0051 }
        if (r4 != 0) goto L_0x0054;
    L_0x0038:
        r0 = new java.io.IOException;	 Catch:{ all -> 0x0051 }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0051 }
        r1.<init>();	 Catch:{ all -> 0x0051 }
        r2 = "failed to delete ";
        r1 = r1.append(r2);	 Catch:{ all -> 0x0051 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x0051 }
        r1 = r1.toString();	 Catch:{ all -> 0x0051 }
        r0.<init>(r1);	 Catch:{ all -> 0x0051 }
        throw r0;	 Catch:{ all -> 0x0051 }
    L_0x0051:
        r0 = move-exception;
        monitor-exit(r9);
        throw r0;
    L_0x0054:
        r4 = r9.f2613i;	 Catch:{ all -> 0x0051 }
        r3 = r0.f2589d;	 Catch:{ all -> 0x0051 }
        r6 = r3[r2];	 Catch:{ all -> 0x0051 }
        r4 = r4 - r6;
        r9.f2613i = r4;	 Catch:{ all -> 0x0051 }
        r3 = r0.f2589d;	 Catch:{ all -> 0x0051 }
        r4 = 0;
        r3[r2] = r4;	 Catch:{ all -> 0x0051 }
        r2 = r2 + 1;
        goto L_0x0024;
    L_0x006a:
        r0 = r9.f2616l;	 Catch:{ all -> 0x0051 }
        r0 = r0 + 1;
        r9.f2616l = r0;	 Catch:{ all -> 0x0051 }
        r0 = r9.f2614j;	 Catch:{ all -> 0x0051 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0051 }
        r2.<init>();	 Catch:{ all -> 0x0051 }
        r3 = "D ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x0051 }
        r2 = r2.append(r10);	 Catch:{ all -> 0x0051 }
        r3 = 10;
        r2 = r2.append(r3);	 Catch:{ all -> 0x0051 }
        r2 = r2.toString();	 Catch:{ all -> 0x0051 }
        r0.append(r2);	 Catch:{ all -> 0x0051 }
        r0 = r9.f2615k;	 Catch:{ all -> 0x0051 }
        r0.remove(r10);	 Catch:{ all -> 0x0051 }
        r0 = r9.m3940h();	 Catch:{ all -> 0x0051 }
        if (r0 == 0) goto L_0x0010;
    L_0x0099:
        r0 = r9.f2605a;	 Catch:{ all -> 0x0051 }
        r2 = r9.f2618n;	 Catch:{ all -> 0x0051 }
        r0.submit(r2);	 Catch:{ all -> 0x0051 }
        goto L_0x0010;
    L_0x00a2:
        r3 = r9.f2612h;	 Catch:{ all -> 0x0051 }
        r6 = new java.io.FileInputStream[r3];	 Catch:{ all -> 0x0051 }
        r3 = r2;
    L_0x00a7:
        r4 = r9.f2612h;	 Catch:{ FileNotFoundException -> 0x00b9 }
        if (r3 >= r4) goto L_0x00cb;
    L_0x00ab:
        r4 = new java.io.FileInputStream;	 Catch:{ FileNotFoundException -> 0x00b9 }
        r5 = r0.m3911a(r3);	 Catch:{ FileNotFoundException -> 0x00b9 }
        r4.<init>(r5);	 Catch:{ FileNotFoundException -> 0x00b9 }
        r6[r3] = r4;	 Catch:{ FileNotFoundException -> 0x00b9 }
        r3 = r3 + 1;
        goto L_0x00a7;
    L_0x00b9:
        r0 = move-exception;
        r0 = r2;
    L_0x00bb:
        r2 = r9.f2612h;	 Catch:{ all -> 0x0051 }
        if (r0 >= r2) goto L_0x0010;
    L_0x00bf:
        r2 = r6[r0];	 Catch:{ all -> 0x0051 }
        if (r2 == 0) goto L_0x0010;
    L_0x00c3:
        r2 = r6[r0];	 Catch:{ all -> 0x0051 }
        com.p038b.p039a.p055f.ProGuard.m4094a(r2);	 Catch:{ all -> 0x0051 }
        r0 = r0 + 1;
        goto L_0x00bb;
    L_0x00cb:
        r1 = r9.f2616l;	 Catch:{ all -> 0x0051 }
        r1 = r1 + 1;
        r9.f2616l = r1;	 Catch:{ all -> 0x0051 }
        r1 = r9.f2614j;	 Catch:{ all -> 0x0051 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0051 }
        r2.<init>();	 Catch:{ all -> 0x0051 }
        r3 = "R ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x0051 }
        r2 = r2.append(r10);	 Catch:{ all -> 0x0051 }
        r3 = 10;
        r2 = r2.append(r3);	 Catch:{ all -> 0x0051 }
        r2 = r2.toString();	 Catch:{ all -> 0x0051 }
        r1.append(r2);	 Catch:{ all -> 0x0051 }
        r1 = r9.m3940h();	 Catch:{ all -> 0x0051 }
        if (r1 == 0) goto L_0x00fc;
    L_0x00f5:
        r1 = r9.f2605a;	 Catch:{ all -> 0x0051 }
        r2 = r9.f2618n;	 Catch:{ all -> 0x0051 }
        r1.submit(r2);	 Catch:{ all -> 0x0051 }
    L_0x00fc:
        r1 = new com.b.a.b.c$c;	 Catch:{ all -> 0x0051 }
        r4 = r0.f2592g;	 Catch:{ all -> 0x0051 }
        r7 = r0.f2589d;	 Catch:{ all -> 0x0051 }
        r8 = 0;
        r2 = r9;
        r3 = r10;
        r1.<init>(r3, r4, r6, r7, r8);	 Catch:{ all -> 0x0051 }
        goto L_0x0010;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.b.c.f(java.lang.String):com.b.a.b.c$c");
    }

    public ProGuard m3949c(String str) {
        return m3919a(this.f2619p.m3887a(str), -1);
    }

    private synchronized ProGuard m3919a(String str, long j) {
        ProGuard proGuard;
        m3941i();
        ProGuard proGuard2 = (ProGuard) this.f2615k.get(str);
        if (j == -1 || (proGuard2 != null && proGuard2.f2592g == j)) {
            ProGuard proGuard3;
            if (proGuard2 == null) {
                proGuard2 = new ProGuard(str, null);
                this.f2615k.put(str, proGuard2);
                proGuard3 = proGuard2;
            } else if (proGuard2.f2591f != null) {
                proGuard = null;
            } else {
                proGuard3 = proGuard2;
            }
            proGuard = new ProGuard(proGuard3, null);
            proGuard3.f2591f = proGuard;
            this.f2614j.write("U " + str + '\n');
            this.f2614j.flush();
        } else {
            proGuard = null;
        }
        return proGuard;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized void m3922a(com.p038b.p039a.p044b.ProGuard.ProGuard r11, boolean r12) {
        /*
        r10 = this;
        r0 = 0;
        monitor-enter(r10);
        r2 = r11.f2582b;	 Catch:{ all -> 0x0012 }
        r1 = r2.f2591f;	 Catch:{ all -> 0x0012 }
        if (r1 == r11) goto L_0x0015;
    L_0x000c:
        r0 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x0012 }
        r0.<init>();	 Catch:{ all -> 0x0012 }
        throw r0;	 Catch:{ all -> 0x0012 }
    L_0x0012:
        r0 = move-exception;
        monitor-exit(r10);
        throw r0;
    L_0x0015:
        if (r12 == 0) goto L_0x0058;
    L_0x0017:
        r1 = r2.f2590e;	 Catch:{ all -> 0x0012 }
        if (r1 != 0) goto L_0x0058;
    L_0x001d:
        r1 = r0;
    L_0x001e:
        r3 = r10.f2612h;	 Catch:{ all -> 0x0012 }
        if (r1 >= r3) goto L_0x0058;
    L_0x0022:
        r3 = r11.f2583c;	 Catch:{ all -> 0x0012 }
        r3 = r3[r1];	 Catch:{ all -> 0x0012 }
        if (r3 != 0) goto L_0x0046;
    L_0x002a:
        r11.m3897b();	 Catch:{ all -> 0x0012 }
        r0 = new java.lang.IllegalStateException;	 Catch:{ all -> 0x0012 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0012 }
        r2.<init>();	 Catch:{ all -> 0x0012 }
        r3 = "Newly created entry didn't create value for index ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x0012 }
        r1 = r2.append(r1);	 Catch:{ all -> 0x0012 }
        r1 = r1.toString();	 Catch:{ all -> 0x0012 }
        r0.<init>(r1);	 Catch:{ all -> 0x0012 }
        throw r0;	 Catch:{ all -> 0x0012 }
    L_0x0046:
        r3 = r2.m3913b(r1);	 Catch:{ all -> 0x0012 }
        r3 = r3.exists();	 Catch:{ all -> 0x0012 }
        if (r3 != 0) goto L_0x0055;
    L_0x0050:
        r11.m3897b();	 Catch:{ all -> 0x0012 }
    L_0x0053:
        monitor-exit(r10);
        return;
    L_0x0055:
        r1 = r1 + 1;
        goto L_0x001e;
    L_0x0058:
        r1 = r10.f2612h;	 Catch:{ all -> 0x0012 }
        if (r0 >= r1) goto L_0x008d;
    L_0x005c:
        r1 = r2.m3913b(r0);	 Catch:{ all -> 0x0012 }
        if (r12 == 0) goto L_0x0089;
    L_0x0062:
        r3 = r1.exists();	 Catch:{ all -> 0x0012 }
        if (r3 == 0) goto L_0x0086;
    L_0x0068:
        r3 = r2.m3911a(r0);	 Catch:{ all -> 0x0012 }
        r1.renameTo(r3);	 Catch:{ all -> 0x0012 }
        r1 = r2.f2589d;	 Catch:{ all -> 0x0012 }
        r4 = r1[r0];	 Catch:{ all -> 0x0012 }
        r6 = r3.length();	 Catch:{ all -> 0x0012 }
        r1 = r2.f2589d;	 Catch:{ all -> 0x0012 }
        r1[r0] = r6;	 Catch:{ all -> 0x0012 }
        r8 = r10.f2613i;	 Catch:{ all -> 0x0012 }
        r4 = r8 - r4;
        r4 = r4 + r6;
        r10.f2613i = r4;	 Catch:{ all -> 0x0012 }
    L_0x0086:
        r0 = r0 + 1;
        goto L_0x0058;
    L_0x0089:
        com.p038b.p039a.p044b.ProGuard.m3924a(r1);	 Catch:{ all -> 0x0012 }
        goto L_0x0086;
    L_0x008d:
        r0 = r10.f2616l;	 Catch:{ all -> 0x0012 }
        r0 = r0 + 1;
        r10.f2616l = r0;	 Catch:{ all -> 0x0012 }
        r0 = 0;
        r2.f2591f = r0;	 Catch:{ all -> 0x0012 }
        r0 = r2.f2590e;	 Catch:{ all -> 0x0012 }
        r0 = r0 | r12;
        if (r0 == 0) goto L_0x0108;
    L_0x009e:
        r0 = 1;
        r2.f2590e = r0;	 Catch:{ all -> 0x0012 }
        r0 = r10.f2614j;	 Catch:{ all -> 0x0012 }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0012 }
        r1.<init>();	 Catch:{ all -> 0x0012 }
        r3 = "C ";
        r1 = r1.append(r3);	 Catch:{ all -> 0x0012 }
        r3 = r2.f2587b;	 Catch:{ all -> 0x0012 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x0012 }
        r3 = " ";
        r1 = r1.append(r3);	 Catch:{ all -> 0x0012 }
        r3 = 116; // 0x74 float:1.63E-43 double:5.73E-322;
        r1 = r1.append(r3);	 Catch:{ all -> 0x0012 }
        r4 = r2.f2588c;	 Catch:{ all -> 0x0012 }
        r1 = r1.append(r4);	 Catch:{ all -> 0x0012 }
        r3 = r2.m3912a();	 Catch:{ all -> 0x0012 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x0012 }
        r3 = 10;
        r1 = r1.append(r3);	 Catch:{ all -> 0x0012 }
        r1 = r1.toString();	 Catch:{ all -> 0x0012 }
        r0.write(r1);	 Catch:{ all -> 0x0012 }
        if (r12 == 0) goto L_0x00ec;
    L_0x00e2:
        r0 = r10.f2617m;	 Catch:{ all -> 0x0012 }
        r4 = 1;
        r4 = r4 + r0;
        r10.f2617m = r4;	 Catch:{ all -> 0x0012 }
        r2.f2592g = r0;	 Catch:{ all -> 0x0012 }
    L_0x00ec:
        r0 = r10.f2614j;	 Catch:{ all -> 0x0012 }
        r0.flush();	 Catch:{ all -> 0x0012 }
        r0 = r10.f2613i;	 Catch:{ all -> 0x0012 }
        r2 = r10.f2611g;	 Catch:{ all -> 0x0012 }
        r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r0 > 0) goto L_0x00ff;
    L_0x00f9:
        r0 = r10.m3940h();	 Catch:{ all -> 0x0012 }
        if (r0 == 0) goto L_0x0053;
    L_0x00ff:
        r0 = r10.f2605a;	 Catch:{ all -> 0x0012 }
        r1 = r10.f2618n;	 Catch:{ all -> 0x0012 }
        r0.submit(r1);	 Catch:{ all -> 0x0012 }
        goto L_0x0053;
    L_0x0108:
        r0 = r10.f2615k;	 Catch:{ all -> 0x0012 }
        r1 = r2.f2587b;	 Catch:{ all -> 0x0012 }
        r0.remove(r1);	 Catch:{ all -> 0x0012 }
        r0 = r10.f2614j;	 Catch:{ all -> 0x0012 }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0012 }
        r1.<init>();	 Catch:{ all -> 0x0012 }
        r3 = "D ";
        r1 = r1.append(r3);	 Catch:{ all -> 0x0012 }
        r2 = r2.f2587b;	 Catch:{ all -> 0x0012 }
        r1 = r1.append(r2);	 Catch:{ all -> 0x0012 }
        r2 = 10;
        r1 = r1.append(r2);	 Catch:{ all -> 0x0012 }
        r1 = r1.toString();	 Catch:{ all -> 0x0012 }
        r0.write(r1);	 Catch:{ all -> 0x0012 }
        goto L_0x00ec;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.b.c.a(com.b.a.b.c$a, boolean):void");
    }

    private boolean m3940h() {
        return this.f2616l >= LightAppTableDefine.Msg_Need_Clean_COUNT && this.f2616l >= this.f2615k.size();
    }

    public boolean m3951d(String str) {
        return m3939g(this.f2619p.m3887a(str));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private synchronized boolean m3939g(java.lang.String r7) {
        /*
        r6 = this;
        r1 = 0;
        monitor-enter(r6);
        r6.m3941i();	 Catch:{ all -> 0x005a }
        r0 = r6.f2615k;	 Catch:{ all -> 0x005a }
        r0 = r0.get(r7);	 Catch:{ all -> 0x005a }
        r0 = (com.p038b.p039a.p044b.ProGuard.ProGuard) r0;	 Catch:{ all -> 0x005a }
        if (r0 == 0) goto L_0x0015;
    L_0x000f:
        r2 = r0.f2591f;	 Catch:{ all -> 0x005a }
        if (r2 == 0) goto L_0x002d;
    L_0x0015:
        r0 = r1;
    L_0x0016:
        monitor-exit(r6);
        return r0;
    L_0x0018:
        r2 = r6.f2613i;	 Catch:{ all -> 0x005a }
        r4 = r0.f2589d;	 Catch:{ all -> 0x005a }
        r4 = r4[r1];	 Catch:{ all -> 0x005a }
        r2 = r2 - r4;
        r6.f2613i = r2;	 Catch:{ all -> 0x005a }
        r2 = r0.f2589d;	 Catch:{ all -> 0x005a }
        r4 = 0;
        r2[r1] = r4;	 Catch:{ all -> 0x005a }
        r1 = r1 + 1;
    L_0x002d:
        r2 = r6.f2612h;	 Catch:{ all -> 0x005a }
        if (r1 >= r2) goto L_0x005d;
    L_0x0031:
        r2 = r0.m3911a(r1);	 Catch:{ all -> 0x005a }
        r3 = r2.exists();	 Catch:{ all -> 0x005a }
        if (r3 == 0) goto L_0x0018;
    L_0x003b:
        r3 = r2.delete();	 Catch:{ all -> 0x005a }
        if (r3 != 0) goto L_0x0018;
    L_0x0041:
        r0 = new java.io.IOException;	 Catch:{ all -> 0x005a }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x005a }
        r1.<init>();	 Catch:{ all -> 0x005a }
        r3 = "failed to delete ";
        r1 = r1.append(r3);	 Catch:{ all -> 0x005a }
        r1 = r1.append(r2);	 Catch:{ all -> 0x005a }
        r1 = r1.toString();	 Catch:{ all -> 0x005a }
        r0.<init>(r1);	 Catch:{ all -> 0x005a }
        throw r0;	 Catch:{ all -> 0x005a }
    L_0x005a:
        r0 = move-exception;
        monitor-exit(r6);
        throw r0;
    L_0x005d:
        r0 = r6.f2616l;	 Catch:{ all -> 0x005a }
        r0 = r0 + 1;
        r6.f2616l = r0;	 Catch:{ all -> 0x005a }
        r0 = r6.f2614j;	 Catch:{ all -> 0x005a }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x005a }
        r1.<init>();	 Catch:{ all -> 0x005a }
        r2 = "D ";
        r1 = r1.append(r2);	 Catch:{ all -> 0x005a }
        r1 = r1.append(r7);	 Catch:{ all -> 0x005a }
        r2 = 10;
        r1 = r1.append(r2);	 Catch:{ all -> 0x005a }
        r1 = r1.toString();	 Catch:{ all -> 0x005a }
        r0.append(r1);	 Catch:{ all -> 0x005a }
        r0 = r6.f2615k;	 Catch:{ all -> 0x005a }
        r0.remove(r7);	 Catch:{ all -> 0x005a }
        r0 = r6.m3940h();	 Catch:{ all -> 0x005a }
        if (r0 == 0) goto L_0x0093;
    L_0x008c:
        r0 = r6.f2605a;	 Catch:{ all -> 0x005a }
        r1 = r6.f2618n;	 Catch:{ all -> 0x005a }
        r0.submit(r1);	 Catch:{ all -> 0x005a }
    L_0x0093:
        r0 = 1;
        goto L_0x0016;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.b.c.g(java.lang.String):boolean");
    }

    public synchronized boolean m3946a() {
        return this.f2614j == null;
    }

    private void m3941i() {
        if (this.f2614j == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized void m3948b() {
        m3941i();
        m3942j();
        this.f2614j.flush();
    }

    public synchronized void close() {
        if (this.f2614j != null) {
            Iterator it = new ArrayList(this.f2615k.values()).iterator();
            while (it.hasNext()) {
                ProGuard proGuard = (ProGuard) it.next();
                if (proGuard.f2591f != null) {
                    proGuard.f2591f.m3897b();
                }
            }
            m3942j();
            this.f2614j.close();
            this.f2614j = null;
        }
    }

    private void m3942j() {
        while (this.f2613i > this.f2611g) {
            m3939g((String) ((Entry) this.f2615k.entrySet().iterator().next()).getKey());
        }
    }

    public void m3950c() {
        com.p038b.p039a.p055f.ProGuard.m4094a(this);
        ProGuard.m3928b(this.f2606b);
    }

    static {
        f2604o = new ProGuard();
    }

    private static void m3928b(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        int length = listFiles.length;
        int i = 0;
        while (i < length) {
            File file2 = listFiles[i];
            if (file2.isDirectory()) {
                ProGuard.m3928b(file2);
            }
            if (!file2.exists() || file2.delete()) {
                i++;
            } else {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }

    public void m3945a(ProGuard proGuard) {
        if (proGuard != null) {
            this.f2619p = proGuard;
        }
    }
}
