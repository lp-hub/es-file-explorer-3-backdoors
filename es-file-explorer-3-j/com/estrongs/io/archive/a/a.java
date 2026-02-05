package com.estrongs.io.archive.a;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.fs.impl.local.d;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;

/* loaded from: classes.dex */
public class a extends com.estrongs.io.archive.compressor.a {
    public a(String str) {
        super(str);
    }

    @Override // com.estrongs.io.archive.h
    public boolean a() {
        return false;
    }

    @Override // com.estrongs.io.archive.compressor.a
    public InputStream k() {
        return new GZIPInputStream(d.a(FexApplication.a(), this.f3220b));
    }
}
