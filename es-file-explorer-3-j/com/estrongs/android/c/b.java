package com.estrongs.android.c;

import android.util.Log;
import com.estrongs.android.util.aw;
import de.aflx.sardine.Version;
import de.aflx.sardine.util.Logger;
import java.io.IOException;
import java.net.ProxySelector;
import java.security.KeyStore;
import java.util.HashMap;
import jcifs.https.Handler;
import org.apache.commons.net.ftp.FTP;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.NTCredentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.ProxySelectorRoutePlanner;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    protected boolean f260a;
    HttpRequestInterceptor c;
    private Header e;
    private AbstractHttpClient f;
    private HttpContext g;
    private static Logger d = new Logger();

    /* renamed from: b, reason: collision with root package name */
    public static HashMap<String, Integer> f259b = new HashMap<>();

    public b() {
        this(null, null);
    }

    public b(String str, String str2) {
        this(str, str2, (ProxySelector) null);
    }

    public b(String str, String str2, ProxySelector proxySelector) {
        this.f260a = false;
        this.e = null;
        this.g = new BasicHttpContext();
        this.c = new c(this);
        a(a(proxySelector), str, str2);
    }

    public b(AbstractHttpClient abstractHttpClient, String str, String str2) {
        this.f260a = false;
        this.e = null;
        this.g = new BasicHttpContext();
        this.c = new c(this);
        a(abstractHttpClient, str, str2);
    }

    private void a(AbstractHttpClient abstractHttpClient, String str, String str2) {
        this.f = abstractHttpClient;
        this.f.addRequestInterceptor(this.c, 0);
        a(str, str2);
        d.warn("init");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00bd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public HttpResponse a(HttpRequestBase httpRequestBase) {
        int i;
        try {
            HttpResponse execute = this.f.execute(httpRequestBase, this.g);
            if (execute.getStatusLine().getStatusCode() == 401) {
                String hostName = ((HttpHost) this.g.getAttribute("http.target_host")).getHostName();
                Integer num = f259b.get(hostName);
                if (num == null) {
                    num = 0;
                }
                int intValue = num.intValue();
                Header firstHeader = execute.getFirstHeader("WWW-Authenticate");
                if (firstHeader != null) {
                    String value = firstHeader.getValue();
                    if (aw.b((CharSequence) value)) {
                        String lowerCase = value.toLowerCase();
                        if ((intValue == 0 && lowerCase.contains("basic")) || ((intValue == 1 && lowerCase.contains("digest")) || (intValue == 2 && lowerCase.contains("ntlm")))) {
                            throw new IOException("File is unauthorized");
                        }
                    }
                }
                if (intValue == 0) {
                    Log.e("EEE", "basic auth failed, try get digest auth header");
                    Header[] headers = execute.getHeaders("WWW-Authenticate");
                    if (headers != null && headers.length > 0) {
                        this.e = headers[0];
                        try {
                        } catch (Exception e) {
                            i = 1;
                        }
                        if (!headers[0].getValue().contains("NTLM")) {
                            if (!headers[0].getValue().contains("ntlm")) {
                                i = 1;
                                f259b.put(hostName, Integer.valueOf(i));
                                if (!(httpRequestBase instanceof HttpPut)) {
                                    try {
                                        Log.e("EEE", "execute request again");
                                        return a(httpRequestBase);
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                        throw e2;
                                    }
                                }
                            }
                        }
                        i = 2;
                        f259b.put(hostName, Integer.valueOf(i));
                        if (!(httpRequestBase instanceof HttpPut)) {
                        }
                    }
                }
            }
            return execute;
        } catch (IOException e3) {
            httpRequestBase.abort();
            throw e3;
        }
    }

    protected ClientConnectionManager a(SchemeRegistry schemeRegistry) {
        return new ThreadSafeClientConnManager(a(), schemeRegistry);
    }

    protected HttpRoutePlanner a(SchemeRegistry schemeRegistry, ProxySelector proxySelector) {
        return new ProxySelectorRoutePlanner(schemeRegistry, proxySelector);
    }

    protected AbstractHttpClient a(ProxySelector proxySelector) {
        SchemeRegistry b2 = b();
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(a(b2), a());
        defaultHttpClient.setRoutePlanner(a(b2, proxySelector));
        return defaultHttpClient;
    }

    protected HttpParams a() {
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        String specification = Version.getSpecification();
        if (specification == null) {
            specification = "UNAVAILABLE";
        }
        HttpProtocolParams.setUserAgent(basicHttpParams, "Sardine/" + specification);
        HttpProtocolParams.setUseExpectContinue(basicHttpParams, false);
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basicHttpParams, FTP.DEFAULT_CONTROL_ENCODING);
        HttpConnectionParams.setTcpNoDelay(basicHttpParams, true);
        HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
        return basicHttpParams;
    }

    public void a(String str, String str2) {
        a(str, str2, "", "");
    }

    public void a(String str, String str2, String str3, String str4) {
        if (str != null) {
            this.f.getCredentialsProvider().setCredentials(new AuthScope(AuthScope.ANY_HOST, -1, AuthScope.ANY_REALM, "NTLM"), new NTCredentials(str, str2, str4, str3));
            this.f.getCredentialsProvider().setCredentials(new AuthScope(AuthScope.ANY_HOST, -1, AuthScope.ANY_REALM, "Basic"), new UsernamePasswordCredentials(str, str2));
            this.f.getCredentialsProvider().setCredentials(new AuthScope(AuthScope.ANY_HOST, -1, AuthScope.ANY_REALM, "Digest"), new UsernamePasswordCredentials(str, str2));
        }
    }

    protected SchemeRegistry b() {
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", c(), 80));
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            e eVar = new e(this, keyStore);
            eVar.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            schemeRegistry.register(new Scheme("https", eVar, Handler.DEFAULT_HTTPS_PORT));
        } catch (Exception e) {
        }
        return schemeRegistry;
    }

    protected PlainSocketFactory c() {
        return PlainSocketFactory.getSocketFactory();
    }
}
