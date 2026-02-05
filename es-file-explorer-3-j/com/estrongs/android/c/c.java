package com.estrongs.android.c;

import android.util.Log;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.Credentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.auth.DigestScheme;
import org.apache.http.impl.auth.NTLMScheme;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements HttpRequestInterceptor {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f261a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar) {
        this.f261a = bVar;
    }

    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) {
        AuthScheme nTLMScheme;
        Header header;
        Header header2;
        Header header3;
        AuthState authState = (AuthState) httpContext.getAttribute("http.auth.target-scope");
        CredentialsProvider credentialsProvider = (CredentialsProvider) httpContext.getAttribute("http.auth.credentials-provider");
        HttpHost httpHost = (HttpHost) httpContext.getAttribute("http.target_host");
        if (authState.getAuthScheme() == null) {
            Credentials credentials = credentialsProvider.getCredentials(new AuthScope(httpHost.getHostName(), httpHost.getPort()));
            Integer num = b.f259b.get(httpHost.getHostName());
            int intValue = num != null ? num.intValue() : 0;
            if (credentials != null) {
                if (intValue == 0) {
                    nTLMScheme = new BasicScheme();
                } else if (intValue == 1) {
                    nTLMScheme = new DigestScheme();
                    header = this.f261a.e;
                    if (header != null) {
                        StringBuilder append = new StringBuilder().append("resp_auth_head is:");
                        header2 = this.f261a.e;
                        Log.e("EEE", append.append(header2.toString()).toString());
                        header3 = this.f261a.e;
                        nTLMScheme.processChallenge(header3);
                    } else {
                        Log.e("EEE", "resp_auth_head is null");
                    }
                } else {
                    nTLMScheme = new NTLMScheme(new d(this.f261a));
                }
                authState.setAuthScheme(nTLMScheme);
                authState.setCredentials(credentials);
            }
        }
    }
}
