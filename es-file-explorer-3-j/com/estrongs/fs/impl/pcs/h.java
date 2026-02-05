package com.estrongs.fs.impl.pcs;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* loaded from: classes.dex */
public class h extends SSLSocketFactory {

    /* renamed from: a, reason: collision with root package name */
    SSLContext f3169a;

    public h(KeyStore keyStore) {
        super(keyStore);
        this.f3169a = SSLContext.getInstance("TLS");
        this.f3169a.init(null, new TrustManager[]{new i(this)}, null);
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
    public Socket createSocket() {
        return this.f3169a.getSocketFactory().createSocket();
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        return this.f3169a.getSocketFactory().createSocket(socket, str, i, z);
    }
}
