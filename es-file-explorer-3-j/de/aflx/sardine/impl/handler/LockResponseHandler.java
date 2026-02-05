package de.aflx.sardine.impl.handler;

import de.aflx.sardine.impl.SardineException;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

/* loaded from: classes.dex */
public class LockResponseHandler extends ValidatingResponseHandler<String> {
    protected String getToken(InputStream inputStream) {
        return "XXX";
    }

    @Override // org.apache.http.client.ResponseHandler
    public String handleResponse(HttpResponse httpResponse) {
        super.validateResponse(httpResponse);
        HttpEntity entity = httpResponse.getEntity();
        if (entity != null) {
            return getToken(entity.getContent());
        }
        StatusLine statusLine = httpResponse.getStatusLine();
        throw new SardineException("No entity found in response", statusLine.getStatusCode(), statusLine.getReasonPhrase());
    }
}
