package de.aflx.sardine.impl.methods;

import java.net.URI;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.entity.mime.MIME;

/* loaded from: classes.dex */
public class HttpUnlock extends HttpRequestBase {
    public static final String METHOD_NAME = "UNLOCK";

    public HttpUnlock(String str, String str2) {
        this(URI.create(str), str2);
    }

    public HttpUnlock(URI uri, String str) {
        setURI(uri);
        setHeader(MIME.CONTENT_TYPE, "text/xml; charset=" + "UTF-8".toLowerCase());
        setHeader("Lock-Token", "<" + str + ">");
    }

    @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return METHOD_NAME;
    }
}
