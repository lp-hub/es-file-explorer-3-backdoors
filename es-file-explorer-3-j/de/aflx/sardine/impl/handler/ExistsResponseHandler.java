package de.aflx.sardine.impl.handler;

import de.aflx.sardine.impl.SardineException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

/* loaded from: classes.dex */
public class ExistsResponseHandler extends ValidatingResponseHandler<Boolean> {
    @Override // org.apache.http.client.ResponseHandler
    public Boolean handleResponse(HttpResponse httpResponse) {
        StatusLine statusLine = httpResponse.getStatusLine();
        int statusCode = statusLine.getStatusCode();
        if (statusCode < 300) {
            return true;
        }
        if (statusCode == 404) {
            return false;
        }
        throw new SardineException("Unexpected response", statusCode, statusLine.getReasonPhrase());
    }
}
