package com.estrongs.android.util;

import java.net.Socket;
import java.security.KeyStore;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import org.apache.http.conn.ssl.SSLSocketFactory;

/* loaded from: classes.dex */
public class ae extends SSLSocketFactory {

    /* renamed from: a, reason: collision with root package name */
    private SSLContext f2663a;

    public ae(KeyStore keyStore) {
        super(keyStore);
        this.f2663a = SSLContext.getInstance("TLS");
        this.f2663a.init(null, new TrustManager[]{new af(this)}, null);
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
    public Socket createSocket() {
        return this.f2663a.getSocketFactory().createSocket();
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        return this.f2663a.getSocketFactory().createSocket(socket, str, i, z);
    }
}
