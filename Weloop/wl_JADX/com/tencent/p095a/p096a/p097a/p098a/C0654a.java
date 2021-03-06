package com.tencent.p095a.p096a.p097a.p098a;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.tencent.a.a.a.a.a */
final class C0654a {
    static File m6831a(String str) {
        File file = new File(str);
        if (!file.exists()) {
            if (!file.getParentFile().exists()) {
                C0654a.m6831a(file.getParentFile().getAbsolutePath());
            }
            file.mkdir();
        }
        return file;
    }

    static List<String> m6832a(File file) {
        Reader fileReader = new FileReader(file);
        BufferedReader bufferedReader = new BufferedReader(fileReader);
        List<String> arrayList = new ArrayList();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                arrayList.add(readLine.trim());
            } else {
                fileReader.close();
                bufferedReader.close();
                return arrayList;
            }
        }
    }
}
