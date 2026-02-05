package oauth.signpost.signature;

import oauth.signpost.OAuth;
import oauth.signpost.http.HttpParameters;
import oauth.signpost.http.HttpRequest;

/* loaded from: classes.dex */
public class AuthorizationHeaderSigningStrategy implements SigningStrategy {
    private static final long serialVersionUID = 1;

    @Override // oauth.signpost.signature.SigningStrategy
    public String writeSignature(String str, HttpRequest httpRequest, HttpParameters httpParameters) {
        StringBuilder sb = new StringBuilder();
        sb.append("OAuth ");
        if (httpParameters.containsKey("realm")) {
            sb.append(httpParameters.getAsHeaderElement("realm"));
            sb.append(", ");
        }
        if (httpParameters.containsKey("oauth_token")) {
            sb.append(httpParameters.getAsHeaderElement("oauth_token"));
            sb.append(", ");
        }
        if (httpParameters.containsKey(OAuth.OAUTH_CALLBACK)) {
            sb.append(httpParameters.getAsHeaderElement(OAuth.OAUTH_CALLBACK));
            sb.append(", ");
        }
        if (httpParameters.containsKey(OAuth.OAUTH_VERIFIER)) {
            sb.append(httpParameters.getAsHeaderElement(OAuth.OAUTH_VERIFIER));
            sb.append(", ");
        }
        sb.append(httpParameters.getAsHeaderElement("oauth_consumer_key"));
        sb.append(", ");
        sb.append(httpParameters.getAsHeaderElement(OAuth.OAUTH_VERSION));
        sb.append(", ");
        sb.append(httpParameters.getAsHeaderElement(OAuth.OAUTH_SIGNATURE_METHOD));
        sb.append(", ");
        sb.append(httpParameters.getAsHeaderElement(OAuth.OAUTH_TIMESTAMP));
        sb.append(", ");
        sb.append(httpParameters.getAsHeaderElement(OAuth.OAUTH_NONCE));
        sb.append(", ");
        sb.append(OAuth.toHeaderElement(OAuth.OAUTH_SIGNATURE, str));
        String sb2 = sb.toString();
        httpRequest.setHeader(OAuth.HTTP_AUTHORIZATION_HEADER, sb2);
        return sb2;
    }
}
