package de.aflx.sardine.impl.handler;

import de.aflx.sardine.impl.SardineException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ResponseHandler;

/* loaded from: classes.dex */
public abstract class ValidatingResponseHandler<T> implements ResponseHandler<T> {
    public HttpResponse resp = null;

    /* JADX INFO: Access modifiers changed from: protected */
    public void validateResponse(HttpResponse httpResponse) {
        this.resp = httpResponse;
        StatusLine statusLine = httpResponse.getStatusLine();
        int statusCode = statusLine.getStatusCode();
        if (statusCode < 200 || statusCode >= 300) {
            throw new SardineException("Unexpected response", statusLine.getStatusCode(), statusLine.getReasonPhrase());
        }
    }
}
