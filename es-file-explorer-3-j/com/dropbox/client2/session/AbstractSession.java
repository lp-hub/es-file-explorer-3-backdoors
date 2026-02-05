package com.dropbox.client2.session;

import com.baidu.sapi2.callback.LoginCallBack;
import com.dropbox.client2.DropboxAPI;
import com.dropbox.client2.session.Session;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPInputStream;
import jcifs.https.Handler;
import oauth.signpost.OAuth;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpEntity;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.ParseException;
import org.apache.http.ProtocolVersion;
import org.apache.http.TokenIterator;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRoute;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicHeaderElementIterator;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes.dex */
public abstract class AbstractSession implements Session {
    private static final String API_SERVER = "api.dropbox.com";
    private static final String CONTENT_SERVER = "api-content.dropbox.com";
    private static final int DEFAULT_TIMEOUT_MILLIS = 30000;
    private static final int KEEP_ALIVE_DURATION_SECS = 20;
    private static final int KEEP_ALIVE_MONITOR_INTERVAL_SECS = 5;
    private static final String WEB_SERVER = "www.dropbox.com";
    private AccessTokenPair accessTokenPair;
    private final Session.AccessType accessType;
    private final AppKeyPair appKeyPair;
    private HttpClient client;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class DBClientConnManager extends ThreadSafeClientConnManager {
        public DBClientConnManager(HttpParams httpParams, SchemeRegistry schemeRegistry) {
            super(httpParams, schemeRegistry);
        }

        @Override // org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager, org.apache.http.conn.ClientConnectionManager
        public ClientConnectionRequest requestConnection(HttpRoute httpRoute, Object obj) {
            IdleConnectionCloserThread.ensureRunning(this, 20, 5);
            return super.requestConnection(httpRoute, obj);
        }
    }

    /* loaded from: classes.dex */
    class DBConnectionReuseStrategy extends DefaultConnectionReuseStrategy {
        private DBConnectionReuseStrategy() {
        }

        @Override // org.apache.http.impl.DefaultConnectionReuseStrategy, org.apache.http.ConnectionReuseStrategy
        public boolean keepAlive(HttpResponse httpResponse, HttpContext httpContext) {
            if (httpResponse == null) {
                throw new IllegalArgumentException("HTTP response may not be null.");
            }
            if (httpContext == null) {
                throw new IllegalArgumentException("HTTP context may not be null.");
            }
            ProtocolVersion protocolVersion = httpResponse.getStatusLine().getProtocolVersion();
            Header firstHeader = httpResponse.getFirstHeader("Transfer-Encoding");
            if (firstHeader == null) {
                Header[] headers = httpResponse.getHeaders("Content-Length");
                if (headers == null || headers.length != 1) {
                    return false;
                }
                try {
                    if (Integer.parseInt(headers[0].getValue()) < 0) {
                        return false;
                    }
                } catch (NumberFormatException e) {
                    return false;
                }
            } else if (!"chunked".equalsIgnoreCase(firstHeader.getValue())) {
                return false;
            }
            HeaderIterator headerIterator = httpResponse.headerIterator("Connection");
            if (!headerIterator.hasNext()) {
                headerIterator = httpResponse.headerIterator("Proxy-Connection");
            }
            if (headerIterator.hasNext()) {
                try {
                    TokenIterator createTokenIterator = createTokenIterator(headerIterator);
                    boolean z = false;
                    while (createTokenIterator.hasNext()) {
                        String nextToken = createTokenIterator.nextToken();
                        if ("Close".equalsIgnoreCase(nextToken)) {
                            return false;
                        }
                        if ("Keep-Alive".equalsIgnoreCase(nextToken)) {
                            z = true;
                        }
                    }
                    if (z) {
                        return true;
                    }
                } catch (ParseException e2) {
                    return false;
                }
            }
            return protocolVersion.lessEquals(HttpVersion.HTTP_1_0) ? false : true;
        }
    }

    /* loaded from: classes.dex */
    class DBKeepAliveStrategy implements ConnectionKeepAliveStrategy {
        private DBKeepAliveStrategy() {
        }

        @Override // org.apache.http.conn.ConnectionKeepAliveStrategy
        public long getKeepAliveDuration(HttpResponse httpResponse, HttpContext httpContext) {
            long j = 20000;
            BasicHeaderElementIterator basicHeaderElementIterator = new BasicHeaderElementIterator(httpResponse.headerIterator("Keep-Alive"));
            while (basicHeaderElementIterator.hasNext()) {
                HeaderElement nextElement = basicHeaderElementIterator.nextElement();
                String name = nextElement.getName();
                String value = nextElement.getValue();
                if (value != null && name.equalsIgnoreCase("timeout")) {
                    try {
                        j = Math.min(j, Long.parseLong(value) * 1000);
                    } catch (NumberFormatException e) {
                    }
                }
            }
            return j;
        }
    }

    /* loaded from: classes.dex */
    class GzipDecompressingEntity extends HttpEntityWrapper {
        public GzipDecompressingEntity(HttpEntity httpEntity) {
            super(httpEntity);
        }

        @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
        public InputStream getContent() {
            return new GZIPInputStream(this.wrappedEntity.getContent());
        }

        @Override // org.apache.http.entity.HttpEntityWrapper, org.apache.http.HttpEntity
        public long getContentLength() {
            return -1L;
        }
    }

    /* loaded from: classes.dex */
    class IdleConnectionCloserThread extends Thread {
        private static IdleConnectionCloserThread thread = null;
        private final int checkIntervalMs;
        private final int idleTimeoutSeconds;
        private final DBClientConnManager manager;

        public IdleConnectionCloserThread(DBClientConnManager dBClientConnManager, int i, int i2) {
            this.manager = dBClientConnManager;
            this.idleTimeoutSeconds = i;
            this.checkIntervalMs = i2 * LoginCallBack.REQUEST_LOGINPROTECT;
        }

        public static synchronized void ensureRunning(DBClientConnManager dBClientConnManager, int i, int i2) {
            synchronized (IdleConnectionCloserThread.class) {
                if (thread == null) {
                    thread = new IdleConnectionCloserThread(dBClientConnManager, i, i2);
                    thread.start();
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    synchronized (this) {
                        wait(this.checkIntervalMs);
                    }
                    this.manager.closeExpiredConnections();
                    this.manager.closeIdleConnections(this.idleTimeoutSeconds, TimeUnit.SECONDS);
                    synchronized (IdleConnectionCloserThread.class) {
                        if (this.manager.getConnectionsInPool() == 0) {
                            thread = null;
                            return;
                        }
                    }
                } catch (InterruptedException e) {
                    thread = null;
                    return;
                }
            }
        }
    }

    public AbstractSession(AppKeyPair appKeyPair, Session.AccessType accessType) {
        this(appKeyPair, accessType, null);
    }

    public AbstractSession(AppKeyPair appKeyPair, Session.AccessType accessType, AccessTokenPair accessTokenPair) {
        this.accessTokenPair = null;
        this.client = null;
        if (appKeyPair == null) {
            throw new IllegalArgumentException("'appKeyPair' must be non-null");
        }
        if (accessType == null) {
            throw new IllegalArgumentException("'type' must be non-null");
        }
        this.appKeyPair = appKeyPair;
        this.accessType = accessType;
        this.accessTokenPair = accessTokenPair;
    }

    private static String buildOAuthHeader(AppKeyPair appKeyPair, AccessTokenPair accessTokenPair) {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("OAuth oauth_version=\"1.0\"");
        sb.append(", oauth_signature_method=\"PLAINTEXT\"");
        sb.append(", oauth_consumer_key=\"").append(encode(appKeyPair.key)).append("\"");
        if (accessTokenPair != null) {
            sb.append(", oauth_token=\"").append(encode(accessTokenPair.key)).append("\"");
            str = encode(appKeyPair.secret) + "&" + encode(accessTokenPair.secret);
        } else {
            str = encode(appKeyPair.secret) + "&";
        }
        sb.append(", oauth_signature=\"").append(str).append("\"");
        return sb.toString();
    }

    private static String encode(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            AssertionError assertionError = new AssertionError("UTF-8 isn't available");
            assertionError.initCause(e);
            throw assertionError;
        }
    }

    @Override // com.dropbox.client2.session.Session
    public String getAPIServer() {
        return API_SERVER;
    }

    @Override // com.dropbox.client2.session.Session
    public AccessTokenPair getAccessTokenPair() {
        return this.accessTokenPair;
    }

    @Override // com.dropbox.client2.session.Session
    public Session.AccessType getAccessType() {
        return this.accessType;
    }

    @Override // com.dropbox.client2.session.Session
    public AppKeyPair getAppKeyPair() {
        return this.appKeyPair;
    }

    @Override // com.dropbox.client2.session.Session
    public String getContentServer() {
        return CONTENT_SERVER;
    }

    @Override // com.dropbox.client2.session.Session
    public synchronized HttpClient getHttpClient() {
        if (this.client == null) {
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            ConnManagerParams.setMaxConnectionsPerRoute(basicHttpParams, new ConnPerRoute() { // from class: com.dropbox.client2.session.AbstractSession.1
                @Override // org.apache.http.conn.params.ConnPerRoute
                public int getMaxForRoute(HttpRoute httpRoute) {
                    return 10;
                }
            });
            ConnManagerParams.setMaxTotalConnections(basicHttpParams, 20);
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), Handler.DEFAULT_HTTPS_PORT));
            DBClientConnManager dBClientConnManager = new DBClientConnManager(basicHttpParams, schemeRegistry);
            BasicHttpParams basicHttpParams2 = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(basicHttpParams2, 30000);
            HttpConnectionParams.setSoTimeout(basicHttpParams2, 30000);
            HttpConnectionParams.setSocketBufferSize(basicHttpParams2, 8192);
            HttpProtocolParams.setUserAgent(basicHttpParams2, "OfficialDropboxJavaSDK/" + DropboxAPI.SDK_VERSION);
            DefaultHttpClient defaultHttpClient = new DefaultHttpClient(dBClientConnManager, basicHttpParams2) { // from class: com.dropbox.client2.session.AbstractSession.2
                @Override // org.apache.http.impl.client.DefaultHttpClient, org.apache.http.impl.client.AbstractHttpClient
                protected ConnectionKeepAliveStrategy createConnectionKeepAliveStrategy() {
                    return new DBKeepAliveStrategy();
                }

                @Override // org.apache.http.impl.client.DefaultHttpClient, org.apache.http.impl.client.AbstractHttpClient
                protected ConnectionReuseStrategy createConnectionReuseStrategy() {
                    return new DBConnectionReuseStrategy();
                }
            };
            defaultHttpClient.addRequestInterceptor(new HttpRequestInterceptor() { // from class: com.dropbox.client2.session.AbstractSession.3
                @Override // org.apache.http.HttpRequestInterceptor
                public void process(HttpRequest httpRequest, HttpContext httpContext) {
                    if (httpRequest.containsHeader("Accept-Encoding")) {
                        return;
                    }
                    httpRequest.addHeader("Accept-Encoding", "gzip");
                }
            });
            defaultHttpClient.addResponseInterceptor(new HttpResponseInterceptor() { // from class: com.dropbox.client2.session.AbstractSession.4
                @Override // org.apache.http.HttpResponseInterceptor
                public void process(HttpResponse httpResponse, HttpContext httpContext) {
                    Header contentEncoding;
                    HttpEntity entity = httpResponse.getEntity();
                    if (entity == null || (contentEncoding = entity.getContentEncoding()) == null) {
                        return;
                    }
                    HeaderElement[] elements = contentEncoding.getElements();
                    for (HeaderElement headerElement : elements) {
                        if (headerElement.getName().equalsIgnoreCase("gzip")) {
                            httpResponse.setEntity(new GzipDecompressingEntity(httpResponse.getEntity()));
                            return;
                        }
                    }
                }
            });
            this.client = defaultHttpClient;
        }
        return this.client;
    }

    @Override // com.dropbox.client2.session.Session
    public Locale getLocale() {
        return Locale.ENGLISH;
    }

    @Override // com.dropbox.client2.session.Session
    public synchronized Session.ProxyInfo getProxyInfo() {
        return null;
    }

    @Override // com.dropbox.client2.session.Session
    public String getWebServer() {
        return WEB_SERVER;
    }

    @Override // com.dropbox.client2.session.Session
    public boolean isLinked() {
        return this.accessTokenPair != null;
    }

    public void setAccessTokenPair(AccessTokenPair accessTokenPair) {
        if (accessTokenPair == null) {
            throw new IllegalArgumentException("'accessTokenPair' must be non-null");
        }
        this.accessTokenPair = accessTokenPair;
    }

    @Override // com.dropbox.client2.session.Session
    public void setRequestTimeout(HttpUriRequest httpUriRequest) {
        HttpParams params = httpUriRequest.getParams();
        HttpConnectionParams.setSoTimeout(params, 30000);
        HttpConnectionParams.setConnectionTimeout(params, 30000);
    }

    @Override // com.dropbox.client2.session.Session
    public void sign(HttpRequest httpRequest) {
        httpRequest.addHeader(OAuth.HTTP_AUTHORIZATION_HEADER, buildOAuthHeader(this.appKeyPair, this.accessTokenPair));
    }

    @Override // com.dropbox.client2.session.Session
    public void unlink() {
        this.accessTokenPair = null;
    }
}
