package com.estrongs.android.util;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class af implements X509TrustManager {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ae f2664a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(ae aeVar) {
        this.f2664a = aeVar;
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
