package com.yf.smart.weloopx.p138a;

/* renamed from: com.yf.smart.weloopx.a.c */
class ProGuard extends Thread {
    final /* synthetic */ ProGuard f6902a;

    ProGuard(ProGuard proGuard) {
        this.f6902a = proGuard;
    }

    public void run() {
        this.f6902a.f6900c.m8784b();
        this.f6902a.f6899b.m7417a(this.f6902a);
        this.f6902a.f6901d = null;
    }
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ull) {
                    bufferedReader.close();
                }
                throw e32;
            }
            try {
                StringBuffer stringBuffer = new StringBuffer();
                while (true) {
                    String readLine = bufferedReader2.readLine();
                    if (readLine != null) {
                        stringBuffer.append(readLine);
                    } else {
                        Object obj2 = f6904a + " Firware Version Check Download finish result  = " + stringBuffer.toString();
                        com.yf.gattlib.p117p.ProGuard.m8292a((String) obj2);
                        com.yf.gattlib.p117p.ProGuard.m8245a(obj2);
                        JSONObject jSONObject = new JSONObject(stringBuffer.toString());
                        Object string = jSONObject.getString("result");
                        if (TextUtils.isEmpty(string) || !string.equals("0000")) {
                            if (outputStream != null) {
                                try {
                                    outputStream.close();
                                } catch (Throwable e322) {
                                    com.yf.gattlib.p117p.ProGuard.m8295a(e322);
                                }
                            }
                            if (bufferedReader2 != null) {
                                try {
                                    bufferedReader2.close();
                                } catch (Throwable e3222) {
                                    com.yf.gattlib.p117p.ProGuard.m8295a(e3222);
                                }
                            }
                            return false;
                        }
                        this.f6910g = jSONObject.getString("firmwareType");
                        this.f6911h = jSONObject.getString("firmwareVersion");
                        string = jSONObject.getString("filesize");
                        this.f6916m = jSONObject.getString("md5code");
                        if (TextUtils.isEmpty(string)) {
                            this.f6912i = -1;
                        } else {
                            this.f6912i = Long.valueOf(string).longValue();
                        }
                        this.f6914k = jSONObject.getString("fileUrl");
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Throwable e32222) {
                                com.yf.gattlib.p117p.ProGuard.m8295a(e32222);
                            }
                        }
                        if (bufferedReader2 != null) {
                            try {
                                bufferedReader2.close();
                            } catch (Throwable e322222) {
                                com.yf.gattlib.p117p.ProGuard.m8295a(e322222);
                            }
                        }
                        return true;
                    }
                }
            } catch (Exception e5) {
                e322222 = e5;
                outputStream2 = outputStream;
                bufferedReader = bufferedReader2;
                com.yf.gattlib.p117p.ProGuard.m8295a(e322222);
                if (outputStream2 != null) {
                    outputStream2.close();
                }
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
                return false;
            } catch (Throwable th3) {
                e322222 = th3;
                bufferedReader = bufferedReader2;
                if (outputStream != null) {
                    outputStream.close();
                }
                if (bufferedReader != null) {
                    bufferedReader.close();
                }
                throw e322222;
            }
        } catch (Exception e6) {
            e322222 = e6;
            outputStream2 = null;
            com.yf.gattlib.p117p.ProGuard.m8295a(e322222);
            if (outputStream2 != null) {
                outputStream2.close();
            }
            if (bufferedReader != null) {
                bufferedReader.close();
            }
            return false;
        } catch (Throwable th4) {
            e322222 = th4;
            outputStream = null;
            if (outputStream != null) {
                outputStream.close();
            }
            if (bufferedReader != null) {
                bufferedReader.close();
            }
            throw e322222;
        }
    }

    private String m8781j() {
        return this.f6909f.getFilesDir() + "/firmware.bin";
    }

    public boolean m8786d() {
        OutputStream fileOutputStream;
        IOException e;
        MalformedURLException e2;
        OutputStream outputStream;
        Throwable th;
        InputStream inputStream = null;
        this.f6917n = f6904a + " 4. \u4e0b\u8f7d\u56fa\u4ef6\u7684url = ";
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f6917n + this.f6914k);
        com.yf.gattlib.p117p.ProGuard.m8245a(this.f6917n);
        if (TextUtils.isEmpty(this.f6914k)) {
            return false;
        }
        if (TextUtils.isEmpty(this.f6913j)) {
            this.f6913j = m8781j();
        }
        this.f6917n = f6904a + " 5. \u4e0b\u8f7d\u56fa\u4ef6filename = " + this.f6913j + ", size is " + this.f6912i;
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f6917n);
        com.yf.gattlib.p117p.ProGuard.m8245a(this.f6917n);
        File file = new File(this.f6913j);
        if (file.exists()) {
            file.delete();
        }
        com.yf.gattlib.p117p.ProGuard.m8245a((Object) " 6. download firmware");
        com.yf.gattlib.p117p.ProGuard.m8292a(f6904a + " 6. download firmware");
        InputStream inputStream2;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f6914k).openConnection();
            httpURLConnection.setReadTimeout(5000);
            httpURLConnection.connect();
            inputStream2 = httpURLConnection.getInputStream();
            try {
                fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[4096];
                    long j = 0;
                    while (true) {
                        int read = inputStream2.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                        j += (long) read;
                    }
                    fileOutputStream.flush();
                    if (j <= 60000) {
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e32) {
                                e32.printStackTrace();
                            }
                        }
                        return false;
                    } else if (this.f6912i <= 0 || this.f6912i == j) {
                        if (this.f6912i <= 0) {
                            this.f6912i = j;
                        }
                        if (TextUtils.isEmpty(this.f6916m)) {
                            if (inputStream2 != null) {
                                try {
                                    inputStream2.close();
                                } catch (IOException e322) {
                                    e322.printStackTrace();
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e3222) {
                                    e3222.printStackTrace();
                                }
                            }
                            return true;
                        }
                        String a = com.yf.smart.weloopx.p145g.ProGuard.m11321a(file);
                        if (TextUtils.isEmpty(a) || TextUtils.isEmpty(a) || !a.equals(this.f6916m)) {
                            com.yf.gattlib.p117p.ProGuard.m8297b(f6904a + " 6.1 firmware check error:");
                            com.yf.gattlib.p117p.ProGuard.m8245a(" 6.1 firmware check error:" + this.f6916m + ", " + a);
                            throw new com.yf.gattlib.p120e.ProGuard("The local firmware file is not server file, MD5 not pass");
                        }
                        com.yf.gattlib.p117p.ProGuard.m8297b(f6904a + " The same file");
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException e32222) {
                                e32222.printStackTrace();
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e322222) {
                                e322222.printStackTrace();
                            }
                        }
                        return true;
                    } else {
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException e3222222) {
                                e3222222.printStackTrace();
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e32222222) {
                                e32222222.printStackTrace();
                            }
                        }
                        return false;
                    }
                } catch (MalformedURLException e4) {
                    e2 = e4;
                    outputStream = fileOutputStream;
                    inputStream = inputStream2;
                    try {
                        e2.printStackTrace();
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e322222222) {
                                e322222222.printStackTrace();
                            }
                        }
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (IOException e3222222222) {
                                e3222222222.printStackTrace();
                            }
                        }
                        return false;
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = outputStream;
                        inputStream2 = inputStream;
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e52) {
                                e52.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e6) {
                    e3222222222 = e6;
                    try {
                        e3222222222.printStackTrace();
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException e32222222222) {
                                e32222222222.printStackTrace();
                            }
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e322222222222) {
                                e322222222222.printStackTrace();
                            }
                        }
                        return false;
                    } catch (Throwable th3) {
                        th = th3;
                        if (inputStream2 != null) {
                            inputStream2.close();
                        }
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        throw th;
                    }
                }
            } catch (MalformedURLException e7) {
                e2 = e7;
                outputStream = null;
                inputStream = inputStream2;
                e2.printStackTrace();
                if (inputStream != null) {
                    inputStream.close();
                }
                if (outputStream != null) {
                    outputStream.close();
                }
                return false;
            } catch (IOException e8) {
                e322222222222 = e8;
                fileOutputStream = null;
                e322222222222.printStackTrace();
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                return false;
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                throw th;
            }
        } catch (MalformedURLException e9) {
            e2 = e9;
            outputStream = null;
            e2.printStackTrace();
            if (inputStream != null) {
                inputStream.close();
            }
            if (outputStream != null) {
                outputStream.close();
            }
            return false;
        } catch (IOException e10) {
            e322222222222 = e10;
            fileOutputStream = null;
            inputStream2 = null;
            e322222222222.printStackTrace();
            if (inputStream2 != null) {
                inputStream2.close();
            }
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
            return false;
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
            inputStream2 = null;
            if (inputStream2 != null) {
                inputStream2.close();
            }
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
            throw th;
        }
    }

    private String m8782k() {
        String a = com.yf.smart.weloopx.p146c.ProGuard.m10905a();
        return TextUtils.isEmpty(a) ? "" : a;
    }

    public String m8787e() {
        return this.f6911h;
    }

    public String m8788f() {
        return this.f6913j;
    }
}
