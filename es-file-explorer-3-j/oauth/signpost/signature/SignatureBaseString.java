package oauth.signpost.signature;

import java.net.URI;
import java.util.Iterator;
import oauth.signpost.OAuth;
import oauth.signpost.exception.OAuthMessageSignerException;
import oauth.signpost.http.HttpParameters;
import oauth.signpost.http.HttpRequest;

/* loaded from: classes.dex */
public class SignatureBaseString {
    private HttpRequest request;
    private HttpParameters requestParameters;

    public SignatureBaseString(HttpRequest httpRequest, HttpParameters httpParameters) {
        this.request = httpRequest;
        this.requestParameters = httpParameters;
    }

    public String generate() {
        try {
            return this.request.getMethod() + '&' + OAuth.percentEncode(normalizeRequestUrl()) + '&' + OAuth.percentEncode(normalizeRequestParameters());
        } catch (Exception e) {
            throw new OAuthMessageSignerException(e);
        }
    }

    public String normalizeRequestParameters() {
        if (this.requestParameters == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.requestParameters.keySet().iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return sb.toString();
            }
            String next = it.next();
            if (!OAuth.OAUTH_SIGNATURE.equals(next) && !"realm".equals(next)) {
                if (i2 > 0) {
                    sb.append("&");
                }
                sb.append(this.requestParameters.getAsQueryString(next));
            }
            i = i2 + 1;
        }
    }

    public String normalizeRequestUrl() {
        int lastIndexOf;
        URI uri = new URI(this.request.getRequestUrl());
        String lowerCase = uri.getScheme().toLowerCase();
        String lowerCase2 = uri.getAuthority().toLowerCase();
        if (((lowerCase.equals("http") && uri.getPort() == 80) || (lowerCase.equals("https") && uri.getPort() == 443)) && (lastIndexOf = lowerCase2.lastIndexOf(":")) >= 0) {
            lowerCase2 = lowerCase2.substring(0, lastIndexOf);
        }
        String rawPath = uri.getRawPath();
        if (rawPath == null || rawPath.length() <= 0) {
            rawPath = "/";
        }
        return lowerCase + "://" + lowerCase2 + rawPath;
    }
}
