package com.estrongs.fs.impl.pcs;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i implements X509TrustManager {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f3170a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(h hVar) {
        this.f3170a = hVar;
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
