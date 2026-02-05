package de.aflx.sardine.impl;

import android.util.Log;
import de.aflx.sardine.DavResource;
import de.aflx.sardine.Sardine;
import de.aflx.sardine.Version;
import de.aflx.sardine.impl.handler.ExistsResponseHandler;
import de.aflx.sardine.impl.handler.LockResponseHandler;
import de.aflx.sardine.impl.handler.MultiStatusResponseHandler;
import de.aflx.sardine.impl.handler.ValidatingResponseHandler;
import de.aflx.sardine.impl.handler.VoidResponseHandler;
import de.aflx.sardine.impl.io.ConsumingInputStream;
import de.aflx.sardine.impl.methods.HttpCopy;
import de.aflx.sardine.impl.methods.HttpLock;
import de.aflx.sardine.impl.methods.HttpMkCol;
import de.aflx.sardine.impl.methods.HttpMove;
import de.aflx.sardine.impl.methods.HttpPropFind;
import de.aflx.sardine.impl.methods.HttpUnlock;
import de.aflx.sardine.model.Allprop;
import de.aflx.sardine.model.Exclusive;
import de.aflx.sardine.model.Lockinfo;
import de.aflx.sardine.model.Lockscope;
import de.aflx.sardine.model.Locktype;
import de.aflx.sardine.model.Multistatus;
import de.aflx.sardine.model.Propfind;
import de.aflx.sardine.model.Response;
import de.aflx.sardine.model.Write;
import de.aflx.sardine.util.Logger;
import de.aflx.sardine.util.QName;
import de.aflx.sardine.util.SardineUtil;
import java.io.IOException;
import java.io.InputStream;
import java.net.ProxySelector;
import java.net.Socket;
import java.net.URISyntaxException;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import jcifs.https.Handler;
import jcifs.ntlmssp.Type1Message;
import jcifs.ntlmssp.Type2Message;
import jcifs.ntlmssp.Type3Message;
import jcifs.util.Base64;
import org.apache.commons.net.ftp.FTP;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.NTCredentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.entity.mime.MIME;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.auth.DigestScheme;
import org.apache.http.impl.auth.NTLMEngine;
import org.apache.http.impl.auth.NTLMEngineException;
import org.apache.http.impl.auth.NTLMScheme;
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
public class SardineImpl implements Sardine {
    private static final String UTF_8 = "UTF-8";
    protected HttpRequestBase _currentRequest;
    protected boolean _isAborted;
    private AbstractHttpClient client;
    private HttpContext context;
    HttpRequestInterceptor preemptiveAuth;
    private static Logger log = new Logger();
    public static HashMap<String, Integer> authTypes = new HashMap<>();
    public static HashMap<String, Header> digest_resp_header = new HashMap<>();

    /* loaded from: classes.dex */
    public final class JCIFSEngine implements NTLMEngine {
        private static final int TYPE_1_FLAGS = -1610055676;

        public JCIFSEngine() {
        }

        @Override // org.apache.http.impl.auth.NTLMEngine
        public String generateType1Msg(String str, String str2) {
            return Base64.encode(new Type1Message(TYPE_1_FLAGS, str, str2).toByteArray());
        }

        @Override // org.apache.http.impl.auth.NTLMEngine
        public String generateType3Msg(String str, String str2, String str3, String str4, String str5) {
            try {
                Type2Message type2Message = new Type2Message(Base64.decode(str5));
                return Base64.encode(new Type3Message(type2Message, str2, str3, str, str4, type2Message.getFlags() & (-196609)).toByteArray());
            } catch (IOException e) {
                throw new NTLMEngineException("Invalid NTLM type 2 message", e);
            }
        }
    }

    /* loaded from: classes.dex */
    public class MySSLSocketFactory extends SSLSocketFactory {
        SSLContext sslContext;

        public MySSLSocketFactory(KeyStore keyStore) {
            super(keyStore);
            this.sslContext = SSLContext.getInstance("TLS");
            this.sslContext.init(null, new TrustManager[]{new X509TrustManager() { // from class: de.aflx.sardine.impl.SardineImpl.MySSLSocketFactory.1
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
            }}, null);
        }

        @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
        public Socket createSocket() {
            return this.sslContext.getSocketFactory().createSocket();
        }

        @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
        public Socket createSocket(Socket socket, String str, int i, boolean z) {
            return this.sslContext.getSocketFactory().createSocket(socket, str, i, z);
        }
    }

    public SardineImpl() {
        this(null, null);
    }

    public SardineImpl(String str, String str2) {
        this(str, str2, (ProxySelector) null);
    }

    public SardineImpl(String str, String str2, ProxySelector proxySelector) {
        this._isAborted = false;
        this.context = new BasicHttpContext();
        this.preemptiveAuth = new HttpRequestInterceptor() { // from class: de.aflx.sardine.impl.SardineImpl.1
            @Override // org.apache.http.HttpRequestInterceptor
            public void process(HttpRequest httpRequest, HttpContext httpContext) {
                AuthScheme nTLMScheme;
                AuthState authState = (AuthState) httpContext.getAttribute("http.auth.target-scope");
                CredentialsProvider credentialsProvider = (CredentialsProvider) httpContext.getAttribute("http.auth.credentials-provider");
                HttpHost httpHost = (HttpHost) httpContext.getAttribute("http.target_host");
                if (authState.getAuthScheme() == null) {
                    Credentials credentials = credentialsProvider.getCredentials(new AuthScope(httpHost.getHostName(), httpHost.getPort()));
                    String hostName = httpHost.getHostName();
                    Integer num = SardineImpl.authTypes.get(hostName);
                    int intValue = num != null ? num.intValue() : 0;
                    if (credentials != null) {
                        if (intValue == 0) {
                            nTLMScheme = new BasicScheme();
                        } else if (intValue == 1) {
                            DigestScheme digestScheme = new DigestScheme();
                            Header header = SardineImpl.digest_resp_header.get(hostName);
                            if (header != null) {
                                digestScheme.processChallenge(header);
                                nTLMScheme = digestScheme;
                            } else {
                                Log.e("EEE", "resp_auth_head is null");
                                nTLMScheme = digestScheme;
                            }
                        } else {
                            nTLMScheme = new NTLMScheme(new JCIFSEngine());
                        }
                        authState.setAuthScheme(nTLMScheme);
                        authState.setCredentials(credentials);
                    }
                }
            }
        };
        init(createDefaultClient(proxySelector), str, str2);
    }

    public SardineImpl(AbstractHttpClient abstractHttpClient) {
        this(abstractHttpClient, (String) null, (String) null);
    }

    public SardineImpl(AbstractHttpClient abstractHttpClient, String str, String str2) {
        this._isAborted = false;
        this.context = new BasicHttpContext();
        this.preemptiveAuth = new HttpRequestInterceptor() { // from class: de.aflx.sardine.impl.SardineImpl.1
            @Override // org.apache.http.HttpRequestInterceptor
            public void process(HttpRequest httpRequest, HttpContext httpContext) {
                AuthScheme nTLMScheme;
                AuthState authState = (AuthState) httpContext.getAttribute("http.auth.target-scope");
                CredentialsProvider credentialsProvider = (CredentialsProvider) httpContext.getAttribute("http.auth.credentials-provider");
                HttpHost httpHost = (HttpHost) httpContext.getAttribute("http.target_host");
                if (authState.getAuthScheme() == null) {
                    Credentials credentials = credentialsProvider.getCredentials(new AuthScope(httpHost.getHostName(), httpHost.getPort()));
                    String hostName = httpHost.getHostName();
                    Integer num = SardineImpl.authTypes.get(hostName);
                    int intValue = num != null ? num.intValue() : 0;
                    if (credentials != null) {
                        if (intValue == 0) {
                            nTLMScheme = new BasicScheme();
                        } else if (intValue == 1) {
                            DigestScheme digestScheme = new DigestScheme();
                            Header header = SardineImpl.digest_resp_header.get(hostName);
                            if (header != null) {
                                digestScheme.processChallenge(header);
                                nTLMScheme = digestScheme;
                            } else {
                                Log.e("EEE", "resp_auth_head is null");
                                nTLMScheme = digestScheme;
                            }
                        } else {
                            nTLMScheme = new NTLMScheme(new JCIFSEngine());
                        }
                        authState.setAuthScheme(nTLMScheme);
                        authState.setCredentials(credentials);
                    }
                }
            }
        };
        init(abstractHttpClient, str, str2);
    }

    private void init(AbstractHttpClient abstractHttpClient, String str, String str2) {
        this.client = abstractHttpClient;
        this.client.addRequestInterceptor(this.preemptiveAuth, 0);
        setCredentials(str, str2);
        log.warn("init");
    }

    @Override // de.aflx.sardine.Sardine
    public void abort() {
        this._isAborted = true;
        this._currentRequest.abort();
    }

    @Override // de.aflx.sardine.Sardine
    public void copy(String str, String str2) {
        execute(new HttpCopy(str, str2), new VoidResponseHandler());
    }

    protected AbstractHttpClient createDefaultClient(ProxySelector proxySelector) {
        SchemeRegistry createDefaultSchemeRegistry = createDefaultSchemeRegistry();
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(createDefaultConnectionManager(createDefaultSchemeRegistry), createDefaultHttpParams());
        defaultHttpClient.setRoutePlanner(createDefaultRoutePlanner(createDefaultSchemeRegistry, proxySelector));
        return defaultHttpClient;
    }

    protected ClientConnectionManager createDefaultConnectionManager(SchemeRegistry schemeRegistry) {
        return new ThreadSafeClientConnManager(createDefaultHttpParams(), schemeRegistry);
    }

    protected HttpParams createDefaultHttpParams() {
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

    protected HttpRoutePlanner createDefaultRoutePlanner(SchemeRegistry schemeRegistry, ProxySelector proxySelector) {
        return new ProxySelectorRoutePlanner(schemeRegistry, proxySelector);
    }

    protected SchemeRegistry createDefaultSchemeRegistry() {
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", createDefaultSocketFactory(), 80));
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            MySSLSocketFactory mySSLSocketFactory = new MySSLSocketFactory(keyStore);
            mySSLSocketFactory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            schemeRegistry.register(new Scheme("https", mySSLSocketFactory, Handler.DEFAULT_HTTPS_PORT));
        } catch (Exception e) {
        }
        return schemeRegistry;
    }

    protected SSLSocketFactory createDefaultSecureSocketFactory() {
        return SSLSocketFactory.getSocketFactory();
    }

    protected PlainSocketFactory createDefaultSocketFactory() {
        return PlainSocketFactory.getSocketFactory();
    }

    @Override // de.aflx.sardine.Sardine
    public void createDirectory(String str) {
        execute(new HttpMkCol(str), new VoidResponseHandler());
    }

    @Override // de.aflx.sardine.Sardine
    public void delete(String str) {
        execute(new HttpDelete(str), new VoidResponseHandler());
    }

    @Override // de.aflx.sardine.Sardine
    public void destroy() {
        ClientConnectionManager connectionManager = this.client.getConnectionManager();
        if (connectionManager != null) {
            connectionManager.shutdown();
        }
        this.client = null;
    }

    @Override // de.aflx.sardine.Sardine
    public void disableCompression() {
    }

    @Override // de.aflx.sardine.Sardine
    public void disablePreemptiveAuthentication() {
    }

    @Override // de.aflx.sardine.Sardine
    public void enableCompression() {
    }

    @Override // de.aflx.sardine.Sardine
    public void enablePreemptiveAuthentication(String str) {
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x008b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected <T> T execute(HttpRequestBase httpRequestBase, ResponseHandler<T> responseHandler) {
        int i;
        try {
            return (T) this.client.execute(httpRequestBase, responseHandler, this.context);
        } catch (IOException e) {
            e.printStackTrace();
            if (responseHandler instanceof ValidatingResponseHandler) {
                HttpResponse httpResponse = ((ValidatingResponseHandler) responseHandler).resp;
                String hostName = ((HttpHost) this.context.getAttribute("http.target_host")).getHostName();
                Integer num = authTypes.get(hostName);
                int intValue = num != null ? num.intValue() : 0;
                if (intValue == 0 && httpResponse.getStatusLine().getStatusCode() == 401) {
                    Log.e("EEE", "basic auth failed, try get digest auth header");
                    Header[] headers = httpResponse.getHeaders("WWW-Authenticate");
                    if (headers != null && headers.length > 0) {
                        try {
                        } catch (Exception e2) {
                            i = 1;
                        }
                        if (!headers[0].getValue().contains("NTLM")) {
                            if (!headers[0].getValue().contains("ntlm")) {
                                i = 1;
                                authTypes.put(hostName, new Integer(i));
                                if (i == 1) {
                                    digest_resp_header.put(hostName, headers[0]);
                                }
                                if (!(httpRequestBase instanceof HttpPut)) {
                                    try {
                                        Log.e("EEE", "execute request again");
                                        return (T) this.client.execute(httpRequestBase, responseHandler, this.context);
                                    } catch (IOException e3) {
                                        throw e3;
                                    }
                                }
                            }
                        }
                        i = 2;
                        authTypes.put(hostName, new Integer(i));
                        if (i == 1) {
                        }
                        if (!(httpRequestBase instanceof HttpPut)) {
                        }
                    }
                } else if (intValue == 1 && httpResponse.getStatusLine().getStatusCode() == 401) {
                    authTypes.remove(hostName);
                    digest_resp_header.remove(hostName);
                }
            }
            httpRequestBase.abort();
            Log.e("EEE", "request abort, throw e");
            throw e;
        }
    }

    protected HttpResponse execute(HttpRequestBase httpRequestBase) {
        try {
            return this.client.execute(httpRequestBase, this.context);
        } catch (IOException e) {
            httpRequestBase.abort();
            throw e;
        }
    }

    @Override // de.aflx.sardine.Sardine
    public boolean exists(String str) {
        return ((Boolean) execute(new HttpHead(str), new ExistsResponseHandler())).booleanValue();
    }

    @Override // de.aflx.sardine.Sardine
    public ConsumingInputStream get(String str) {
        return get(str, Collections.emptyMap());
    }

    @Override // de.aflx.sardine.Sardine
    public ConsumingInputStream get(String str, Map<String, String> map) {
        HttpGet httpGet = new HttpGet(str);
        this._currentRequest = httpGet;
        for (String str2 : map.keySet()) {
            httpGet.addHeader(str2, map.get(str2));
        }
        HttpResponse execute = execute(httpGet);
        try {
            new VoidResponseHandler().handleResponse(execute);
            return new ConsumingInputStream(execute, httpGet);
        } catch (IOException e) {
            httpGet.abort();
            throw e;
        }
    }

    public HttpRequestBase getCurrentRequest() {
        return this._currentRequest;
    }

    @Override // de.aflx.sardine.Sardine
    public List<DavResource> getResources(String str) {
        return list(str);
    }

    @Override // de.aflx.sardine.Sardine
    public boolean isAborted() {
        return this._isAborted;
    }

    @Override // de.aflx.sardine.Sardine
    public List<DavResource> list(String str) {
        return list(str, 1);
    }

    @Override // de.aflx.sardine.Sardine
    public List<DavResource> list(String str, int i) {
        HttpPropFind httpPropFind = new HttpPropFind(str);
        httpPropFind.setDepth(Integer.toString(i));
        new Propfind().setAllprop(new Allprop());
        httpPropFind.setEntity(new StringEntity("<?xml version=\"1.0\" encoding=\"utf-8\" ?><D:propfind xmlns:D=\"DAV:\">  <D:allprop/></D:propfind>", "UTF-8"));
        Multistatus multistatus = (Multistatus) execute(httpPropFind, new MultiStatusResponseHandler());
        if (multistatus == null) {
            return null;
        }
        List<Response> response = multistatus.getResponse();
        ArrayList arrayList = new ArrayList(response.size());
        for (Response response2 : response) {
            try {
                arrayList.add(new DavResource(response2));
            } catch (URISyntaxException e) {
                log.warn(String.format("Ignore resource with invalid URI %s", response2.getHref()));
            }
        }
        return arrayList;
    }

    @Override // de.aflx.sardine.Sardine
    public String lock(String str) {
        HttpLock httpLock = new HttpLock(str);
        Lockinfo lockinfo = new Lockinfo();
        Lockscope lockscope = new Lockscope();
        lockscope.setExclusive(new Exclusive());
        lockinfo.setLockscope(lockscope);
        Locktype locktype = new Locktype();
        locktype.setWrite(new Write());
        lockinfo.setLocktype(locktype);
        return (String) execute(httpLock, new LockResponseHandler());
    }

    @Override // de.aflx.sardine.Sardine
    public void move(String str, String str2) {
        execute(new HttpMove(str, str2), new VoidResponseHandler());
    }

    @Override // de.aflx.sardine.Sardine
    public List<DavResource> patch(String str, Map<QName, String> map) {
        return patch(str, map, Collections.emptyList());
    }

    @Override // de.aflx.sardine.Sardine
    public List<DavResource> patch(String str, Map<QName, String> map, List<QName> list) {
        return null;
    }

    @Override // de.aflx.sardine.Sardine
    public void put(String str, InputStream inputStream) {
        put(str, inputStream, (String) null);
    }

    @Override // de.aflx.sardine.Sardine
    public void put(String str, InputStream inputStream, String str2) {
        put(str, inputStream, str2, true);
    }

    @Override // de.aflx.sardine.Sardine
    public void put(String str, InputStream inputStream, String str2, boolean z) {
        put(str, new InputStreamEntity(inputStream, -1L), str2, z);
    }

    @Override // de.aflx.sardine.Sardine
    public void put(String str, InputStream inputStream, Map<String, String> map) {
        put(str, new InputStreamEntity(inputStream, -1L), map);
    }

    @Override // de.aflx.sardine.Sardine
    public void put(String str, HttpEntity httpEntity, String str2, boolean z) {
        HashMap hashMap = new HashMap();
        if (str2 != null) {
            hashMap.put(MIME.CONTENT_TYPE, str2);
        }
        if (z) {
            hashMap.put("Expect", "100-continue");
        }
        put(str, httpEntity, hashMap);
    }

    public void put(String str, HttpEntity httpEntity, Map<String, String> map) {
        HttpPut httpPut = new HttpPut(str);
        this._currentRequest = httpPut;
        this._isAborted = false;
        httpPut.setEntity(httpEntity);
        for (String str2 : map.keySet()) {
            httpPut.addHeader(str2, map.get(str2));
        }
        if (!httpPut.containsHeader(MIME.CONTENT_TYPE)) {
            httpPut.addHeader(MIME.CONTENT_TYPE, "application/octet-stream");
        }
        try {
            execute(httpPut, new VoidResponseHandler());
        } catch (HttpResponseException e) {
            if (e.getStatusCode() == 417) {
                httpPut.removeHeaders("Expect");
                if (httpEntity.isRepeatable()) {
                    execute(httpPut, new VoidResponseHandler());
                    return;
                }
            }
            throw e;
        } catch (IOException e2) {
            e2.getCause().printStackTrace();
            throw e2;
        }
    }

    @Override // de.aflx.sardine.Sardine
    public void put(String str, byte[] bArr) {
        put(str, bArr, (String) null);
    }

    @Override // de.aflx.sardine.Sardine
    public void put(String str, byte[] bArr, String str2) {
        put(str, (HttpEntity) new ByteArrayEntity(bArr), str2, true);
    }

    @Override // de.aflx.sardine.Sardine
    public void setCredentials(String str, String str2) {
        setCredentials(str, str2, "", "");
    }

    @Override // de.aflx.sardine.Sardine
    public void setCredentials(String str, String str2, String str3, String str4) {
        if (str != null) {
            this.client.getCredentialsProvider().setCredentials(new AuthScope(AuthScope.ANY_HOST, -1, AuthScope.ANY_REALM, "NTLM"), new NTCredentials(str, str2, str4, str3));
            this.client.getCredentialsProvider().setCredentials(new AuthScope(AuthScope.ANY_HOST, -1, AuthScope.ANY_REALM, "Basic"), new UsernamePasswordCredentials(str, str2));
            this.client.getCredentialsProvider().setCredentials(new AuthScope(AuthScope.ANY_HOST, -1, AuthScope.ANY_REALM, "Digest"), new UsernamePasswordCredentials(str, str2));
        }
    }

    @Override // de.aflx.sardine.Sardine
    public void setCustomProps(String str, Map<String, String> map, List<String> list) {
        patch(str, SardineUtil.toQName(map), SardineUtil.toQName(list));
    }

    @Override // de.aflx.sardine.Sardine
    public void unlock(String str, String str2) {
        HttpUnlock httpUnlock = new HttpUnlock(str, str2);
        Lockinfo lockinfo = new Lockinfo();
        Lockscope lockscope = new Lockscope();
        lockscope.setExclusive(new Exclusive());
        lockinfo.setLockscope(lockscope);
        Locktype locktype = new Locktype();
        locktype.setWrite(new Write());
        lockinfo.setLocktype(locktype);
        execute(httpUnlock, new VoidResponseHandler());
    }
}
