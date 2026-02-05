package de.aflx.sardine.impl.handler;

import de.aflx.sardine.impl.SardineException;
import de.aflx.sardine.model.Multistatus;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.simpleframework.xml.core.Persister;

/* loaded from: classes.dex */
public class MultiStatusResponseHandler extends ValidatingResponseHandler<Multistatus> {
    protected Multistatus getMultistatus(InputStream inputStream) {
        try {
            return (Multistatus) new Persister().read(Multistatus.class, inputStream, false);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // org.apache.http.client.ResponseHandler
    public Multistatus handleResponse(HttpResponse httpResponse) {
        super.validateResponse(httpResponse);
        HttpEntity entity = httpResponse.getEntity();
        StatusLine statusLine = httpResponse.getStatusLine();
        if (entity == null) {
            throw new SardineException("No entity found in response", statusLine.getStatusCode(), statusLine.getReasonPhrase());
        }
        return getMultistatus(entity.getContent());
    }
}
