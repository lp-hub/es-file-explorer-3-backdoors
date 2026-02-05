package com.estrongs.fs.impl.pcs;

import android.util.Log;
import java.io.BufferedInputStream;
import java.io.InputStream;
import org.apache.http.client.methods.HttpGet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c extends BufferedInputStream {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ HttpGet f3163a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ PcsFileSystem f3164b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(PcsFileSystem pcsFileSystem, InputStream inputStream, HttpGet httpGet) {
        super(inputStream);
        this.f3164b = pcsFileSystem;
        this.f3163a = httpGet;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.f3163a.abort();
        } catch (Exception e) {
            Log.e("PcsFileSystem", "Error when HttpGet.abort()" + e);
        }
        super.close();
    }
}
