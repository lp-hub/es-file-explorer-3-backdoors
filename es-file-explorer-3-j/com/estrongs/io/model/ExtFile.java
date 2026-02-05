package com.estrongs.io.model;

import com.estrongs.android.util.q;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public class ExtFile extends File {
    private static final long serialVersionUID = 1;

    public ExtFile(String str) {
        super(str);
    }

    public void copyTo(File file) {
    }

    public InputStream getInputStream() {
        return new FileInputStream(getPath());
    }

    public OutputStream getOutputStream() {
        return new FileOutputStream(getPath());
    }

    @Override // java.io.File
    public File[] listFiles() {
        return listFiles((FileFilter) null);
    }

    @Override // java.io.File
    public File[] listFiles(FileFilter fileFilter) {
        File[] listFiles = super.listFiles();
        if (listFiles == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < listFiles.length; i++) {
            if (fileFilter == null || fileFilter.accept(listFiles[i])) {
                arrayList.add(new ExtFile(listFiles[i].getAbsolutePath()));
            }
        }
        Collections.sort(arrayList, q.c);
        return (File[]) arrayList.toArray(new File[0]);
    }
}
