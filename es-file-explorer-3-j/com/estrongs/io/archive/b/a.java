package com.estrongs.io.archive.b;

import com.estrongs.io.archive.e;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* loaded from: classes.dex */
public class a implements e {

    /* renamed from: a, reason: collision with root package name */
    ZipOutputStream f3207a;

    /* renamed from: b, reason: collision with root package name */
    ZipEntry f3208b = null;

    public a(OutputStream outputStream, int i) {
        this.f3207a = new ZipOutputStream(outputStream);
        if (i != -1) {
            this.f3207a.setLevel(i);
        }
    }

    @Override // com.estrongs.io.archive.e
    public void a() {
        this.f3207a.closeEntry();
    }

    @Override // com.estrongs.io.archive.e
    public void a(String str) {
        this.f3207a.putNextEntry(new ZipEntry(str));
    }

    @Override // com.estrongs.io.archive.e
    public void a(byte[] bArr, int i, int i2) {
        this.f3207a.write(bArr, i, i2);
    }

    @Override // com.estrongs.io.archive.e
    public void b() {
        this.f3207a.close();
    }
}
