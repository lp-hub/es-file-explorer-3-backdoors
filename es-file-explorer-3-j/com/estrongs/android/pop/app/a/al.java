package com.estrongs.android.pop.app.a;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;

/* loaded from: classes.dex */
class al {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ aj f406a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public al(aj ajVar) {
        this.f406a = ajVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] a() {
        File file = new File("/sdcard/.estrongs/playlist");
        if (!file.exists()) {
            return new String[0];
        }
        File[] listFiles = file.listFiles();
        if (listFiles.length == 0) {
            return new String[0];
        }
        String[] strArr = new String[listFiles.length];
        for (int i = 0; i < listFiles.length; i++) {
            strArr[i] = listFiles[i].getName();
        }
        return strArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] a(String str) {
        File file = new File("/sdcard/.estrongs/playlist/" + str);
        try {
            if (!file.exists()) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(dataInputStream));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                arrayList.add(readLine);
            }
            dataInputStream.close();
            Object[] array = arrayList.toArray();
            String[] strArr = new String[array.length];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= array.length) {
                    return strArr;
                }
                strArr[i2] = (String) array[i2];
                i = i2 + 1;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(String str) {
        File file = new File("/sdcard/.estrongs/playlist/" + str);
        if (!file.exists()) {
            return true;
        }
        file.delete();
        return true;
    }
}
