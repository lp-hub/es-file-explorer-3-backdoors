package com.estrongs.android.pop.app.editor;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;

/* loaded from: classes.dex */
public class d extends a {

    /* renamed from: a, reason: collision with root package name */
    private File f746a;

    /* renamed from: b, reason: collision with root package name */
    private RandomAccessFile f747b;

    public d(File file) {
        this.f746a = null;
        this.f747b = null;
        this.f746a = file;
        String str = "rw";
        if (this.f746a.exists() && !this.f746a.canWrite()) {
            str = "r";
        }
        try {
            this.f747b = new RandomAccessFile(file, str);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public int a(byte[] bArr, int i, int i2) {
        if (this.f747b == null) {
            throw new IOException("fail to open file.");
        }
        return this.f747b.read(bArr, i, i2);
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public long a() {
        if (this.f747b == null) {
            throw new IOException("fail to open file.");
        }
        return this.f747b.getFilePointer();
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public void a(long j) {
        if (this.f747b == null) {
            throw new IOException("fail to open file.");
        }
        this.f747b.seek(j);
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public boolean a(File file) {
        boolean renameTo = this.f746a.renameTo(file);
        if (renameTo) {
            this.f746a = file;
            String str = "rw";
            if (this.f746a.exists() && !this.f746a.canWrite()) {
                str = "r";
            }
            try {
                this.f747b.close();
                this.f747b = new RandomAccessFile(file, str);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return renameTo;
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public boolean b() {
        return this.f746a.delete();
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public long c() {
        if (this.f747b == null) {
            throw new IOException("fail to open file.");
        }
        return this.f747b.length();
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public void d() {
        if (this.f747b == null) {
            throw new IOException("fail to open file.");
        }
        this.f747b.close();
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public InputStream e() {
        try {
            return new FileInputStream(this.f746a);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public OutputStream f() {
        try {
            return new FileOutputStream(this.f746a);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public boolean g() {
        return this.f746a.exists();
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public String h() {
        return this.f746a.getAbsolutePath();
    }
}
