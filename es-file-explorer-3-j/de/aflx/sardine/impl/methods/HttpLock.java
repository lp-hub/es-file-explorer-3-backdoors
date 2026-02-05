package de.aflx.sardine.impl.methods;

import java.net.URI;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.entity.mime.MIME;

/* loaded from: classes.dex */
public class HttpLock extends HttpEntityEnclosingRequestBase {
    public static final String METHOD_NAME = "LOCK";

    public HttpLock(String str) {
        this(URI.create(str));
    }

    public HttpLock(URI uri) {
        setURI(uri);
        setHeader(MIME.CONTENT_TYPE, "text/xml; charset=" + "UTF-8".toLowerCase());
    }

    @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return METHOD_NAME;
    }

    public void setDepth(String str) {
        setHeader("Depth", str);
    }

    public void setInfinite() {
        setHeader("Timeout", "Infinite");
    }

    public void setTimeout(int i) {
        setHeader("Timeout", "Second-" + i);
    }
}
