package com.estrongs.android.c;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f implements X509TrustManager {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f265a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ e f266b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e eVar, b bVar) {
        this.f266b = eVar;
        this.f265a = bVar;
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        return null;
    }
}
