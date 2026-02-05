package com.estrongs.android.pop.app.editor;

import com.estrongs.fs.impl.local.NativeException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class am extends a {

    /* renamed from: a, reason: collision with root package name */
    private File f735a;

    /* renamed from: b, reason: collision with root package name */
    private String f736b;
    private Object c = null;

    public am(File file) {
        this.f735a = null;
        this.f736b = null;
        this.f735a = file;
        this.f736b = this.f735a.getAbsolutePath();
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public int a(byte[] bArr, int i, int i2) {
        if (this.c == null) {
            this.c = com.estrongs.fs.impl.local.h.i(this.f736b);
            if (this.c == null) {
                throw new IOException("fail to open file.");
            }
        }
        int a2 = com.estrongs.fs.impl.local.h.a(this.c, bArr, i, i2);
        if (a2 <= 0) {
            return -1;
        }
        return a2;
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public long a() {
        if (this.c == null) {
            this.c = com.estrongs.fs.impl.local.h.i(this.f736b);
            if (this.c == null) {
                throw new IOException("fail to open file.");
            }
        }
        return com.estrongs.fs.impl.local.h.a(this.c, 0L, 1);
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public void a(long j) {
        if (this.c == null) {
            this.c = com.estrongs.fs.impl.local.h.i(this.f736b);
            if (this.c == null) {
                throw new IOException("fail to open file.");
            }
        }
        com.estrongs.fs.impl.local.h.a(this.c, j, 0);
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public boolean a(File file) {
        boolean a2 = com.estrongs.fs.impl.local.h.a(this.f736b, file.getAbsolutePath());
        if (a2) {
            this.f736b = file.getAbsolutePath();
        }
        return a2;
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public boolean b() {
        try {
            return com.estrongs.fs.impl.local.h.c(this.f736b);
        } catch (NativeException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public long c() {
        com.estrongs.fs.c d = com.estrongs.fs.impl.local.h.d(this.f736b);
        if (d != null) {
            return d.e;
        }
        return -1L;
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public void d() {
        if (this.c != null) {
            com.estrongs.fs.impl.local.h.a(this.c);
            this.c = null;
        }
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public InputStream e() {
        return com.estrongs.fs.impl.local.h.j(this.f736b);
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public OutputStream f() {
        return com.estrongs.fs.impl.local.h.e(this.f736b);
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public boolean g() {
        com.estrongs.fs.c d = com.estrongs.fs.impl.local.h.d(this.f736b);
        return d != null && d.h > 0;
    }

    @Override // com.estrongs.android.pop.app.editor.a
    public String h() {
        return this.f736b;
    }
}
