package com.dropbox.client2.session;

import java.util.Locale;
import org.apache.http.HttpRequest;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpUriRequest;

/* loaded from: classes.dex */
public interface Session {

    /* loaded from: classes.dex */
    public enum AccessType {
        DROPBOX("dropbox"),
        APP_FOLDER("sandbox");

        private final String urlPart;

        AccessType(String str) {
            this.urlPart = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.urlPart;
        }
    }

    /* loaded from: classes.dex */
    public final class ProxyInfo {
        public final String host;
        public final int port;

        public ProxyInfo(String str) {
            this(str, -1);
        }

        public ProxyInfo(String str, int i) {
            this.host = str;
            this.port = i;
        }
    }

    String getAPIServer();

    AccessTokenPair getAccessTokenPair();

    AccessType getAccessType();

    AppKeyPair getAppKeyPair();

    String getContentServer();

    HttpClient getHttpClient();

    Locale getLocale();

    ProxyInfo getProxyInfo();

    String getWebServer();

    boolean isLinked();

    void setRequestTimeout(HttpUriRequest httpUriRequest);

    void sign(HttpRequest httpRequest);

    void unlink();
}
