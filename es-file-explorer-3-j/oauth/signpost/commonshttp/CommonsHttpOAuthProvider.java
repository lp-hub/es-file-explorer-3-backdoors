package oauth.signpost.commonshttp;

import java.io.IOException;
import oauth.signpost.AbstractOAuthProvider;
import oauth.signpost.http.HttpRequest;
import oauth.signpost.http.HttpResponse;
import org.apache.http.HttpEntity;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;

/* loaded from: classes.dex */
public class CommonsHttpOAuthProvider extends AbstractOAuthProvider {
    private static final long serialVersionUID = 1;
    private transient HttpClient httpClient;

    public CommonsHttpOAuthProvider(String str, String str2, String str3) {
        super(str, str2, str3);
        this.httpClient = new DefaultHttpClient();
    }

    public CommonsHttpOAuthProvider(String str, String str2, String str3, HttpClient httpClient) {
        super(str, str2, str3);
        this.httpClient = httpClient;
    }

    @Override // oauth.signpost.AbstractOAuthProvider
    protected void closeConnection(HttpRequest httpRequest, HttpResponse httpResponse) {
        HttpEntity entity;
        if (httpResponse == null || (entity = ((org.apache.http.HttpResponse) httpResponse.unwrap()).getEntity()) == null) {
            return;
        }
        try {
            entity.consumeContent();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override // oauth.signpost.AbstractOAuthProvider
    protected HttpRequest createRequest(String str) {
        return new HttpRequestAdapter(new HttpPost(str));
    }

    @Override // oauth.signpost.AbstractOAuthProvider
    protected HttpResponse sendRequest(HttpRequest httpRequest) {
        return new HttpResponseAdapter(this.httpClient.execute((HttpUriRequest) httpRequest.unwrap()));
    }

    public void setHttpClient(HttpClient httpClient) {
        this.httpClient = httpClient;
    }
}
