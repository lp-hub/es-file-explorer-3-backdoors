package de.aflx.sardine.impl.methods;

import java.net.URI;
import org.apache.http.client.methods.HttpRequestBase;

/* loaded from: classes.dex */
public class HttpCopy extends HttpRequestBase {
    public static final String METHOD_NAME = "COPY";

    public HttpCopy(String str, String str2) {
        this(URI.create(str), URI.create(str2));
    }

    public HttpCopy(URI uri, URI uri2) {
        setHeader("Destination", uri2.toString());
        setHeader("Overwrite", "T");
        setURI(uri);
    }

    @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return METHOD_NAME;
    }
}
