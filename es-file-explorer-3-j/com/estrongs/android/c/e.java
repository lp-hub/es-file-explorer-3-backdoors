package com.estrongs.android.c;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* loaded from: classes.dex */
public class e extends SSLSocketFactory {

    /* renamed from: a, reason: collision with root package name */
    SSLContext f263a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ b f264b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(b bVar, KeyStore keyStore) {
        super(keyStore);
        this.f264b = bVar;
        this.f263a = SSLContext.getInstance("TLS");
        this.f263a.init(null, new TrustManager[]{new f(this, bVar)}, null);
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
    public Socket createSocket() {
        return this.f263a.getSocketFactory().createSocket();
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        return this.f263a.getSocketFactory().createSocket(socket, str, i, z);
    }
}
