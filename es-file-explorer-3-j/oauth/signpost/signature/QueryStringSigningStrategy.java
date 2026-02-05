package oauth.signpost.signature;

import oauth.signpost.OAuth;
import oauth.signpost.http.HttpParameters;
import oauth.signpost.http.HttpRequest;

/* loaded from: classes.dex */
public class QueryStringSigningStrategy implements SigningStrategy {
    private static final long serialVersionUID = 1;

    @Override // oauth.signpost.signature.SigningStrategy
    public String writeSignature(String str, HttpRequest httpRequest, HttpParameters httpParameters) {
        StringBuilder sb = new StringBuilder(OAuth.addQueryParameters(httpRequest.getRequestUrl(), OAuth.OAUTH_SIGNATURE, str));
        if (httpParameters.containsKey("oauth_token")) {
            sb.append("&");
            sb.append(httpParameters.getAsQueryString("oauth_token"));
        }
        if (httpParameters.containsKey(OAuth.OAUTH_CALLBACK)) {
            sb.append("&");
            sb.append(httpParameters.getAsQueryString(OAuth.OAUTH_CALLBACK));
        }
        if (httpParameters.containsKey(OAuth.OAUTH_VERIFIER)) {
            sb.append("&");
            sb.append(httpParameters.getAsQueryString(OAuth.OAUTH_VERIFIER));
        }
        sb.append("&");
        sb.append(httpParameters.getAsQueryString("oauth_consumer_key"));
        sb.append("&");
        sb.append(httpParameters.getAsQueryString(OAuth.OAUTH_VERSION));
        sb.append("&");
        sb.append(httpParameters.getAsQueryString(OAuth.OAUTH_SIGNATURE_METHOD));
        sb.append("&");
        sb.append(httpParameters.getAsQueryString(OAuth.OAUTH_TIMESTAMP));
        sb.append("&");
        sb.append(httpParameters.getAsQueryString(OAuth.OAUTH_NONCE));
        String sb2 = sb.toString();
        httpRequest.setRequestUrl(sb2);
        return sb2;
    }
}
