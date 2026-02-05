package oauth.signpost.basic;

import java.net.HttpURLConnection;
import java.net.URL;
import oauth.signpost.AbstractOAuthProvider;
import oauth.signpost.http.HttpRequest;
import oauth.signpost.http.HttpResponse;

/* loaded from: classes.dex */
public class DefaultOAuthProvider extends AbstractOAuthProvider {
    private static final long serialVersionUID = 1;

    public DefaultOAuthProvider(String str, String str2, String str3) {
        super(str, str2, str3);
    }

    @Override // oauth.signpost.AbstractOAuthProvider
    protected void closeConnection(HttpRequest httpRequest, HttpResponse httpResponse) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) httpRequest.unwrap();
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override // oauth.signpost.AbstractOAuthProvider
    protected HttpRequest createRequest(String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setAllowUserInteraction(false);
        httpURLConnection.setRequestProperty("Content-Length", "0");
        return new HttpURLConnectionRequestAdapter(httpURLConnection);
    }

    @Override // oauth.signpost.AbstractOAuthProvider
    protected HttpResponse sendRequest(HttpRequest httpRequest) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) httpRequest.unwrap();
        httpURLConnection.connect();
        return new HttpURLConnectionResponseAdapter(httpURLConnection);
    }
}
