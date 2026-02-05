package de.aflx.sardine.impl.handler;

import org.apache.http.HttpResponse;

/* loaded from: classes.dex */
public class VoidResponseHandler extends ValidatingResponseHandler<Void> {
    @Override // org.apache.http.client.ResponseHandler
    public Void handleResponse(HttpResponse httpResponse) {
        validateResponse(httpResponse);
        return null;
    }
}
