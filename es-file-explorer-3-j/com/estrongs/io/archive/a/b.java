package com.estrongs.io.archive.a;

import com.estrongs.fs.impl.local.d;
import com.estrongs.io.archive.e;
import java.io.BufferedOutputStream;
import java.io.File;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes.dex */
public class b implements e {

    /* renamed from: a, reason: collision with root package name */
    GZIPOutputStream f3189a;

    /* renamed from: b, reason: collision with root package name */
    File f3190b;

    public b(String str) {
        this.f3190b = new File(str);
        this.f3189a = new GZIPOutputStream(new BufferedOutputStream(d.f(str)));
    }

    @Override // com.estrongs.io.archive.e
    public void a() {
    }

    @Override // com.estrongs.io.archive.e
    public void a(String str) {
    }

    @Override // com.estrongs.io.archive.e
    public void a(byte[] bArr, int i, int i2) {
        this.f3189a.write(bArr, i, i2);
    }

    @Override // com.estrongs.io.archive.e
    public void b() {
        this.f3189a.finish();
        this.f3189a.close();
    }
}
