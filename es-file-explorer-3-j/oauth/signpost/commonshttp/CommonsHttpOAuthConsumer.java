package oauth.signpost.commonshttp;

import oauth.signpost.AbstractOAuthConsumer;
import oauth.signpost.http.HttpRequest;
import org.apache.http.client.methods.HttpUriRequest;

/* loaded from: classes.dex */
public class CommonsHttpOAuthConsumer extends AbstractOAuthConsumer {
    private static final long serialVersionUID = 1;

    public CommonsHttpOAuthConsumer(String str, String str2) {
        super(str, str2);
    }

    @Override // oauth.signpost.AbstractOAuthConsumer
    protected HttpRequest wrap(Object obj) {
        if (obj instanceof org.apache.http.HttpRequest) {
            return new HttpRequestAdapter((HttpUriRequest) obj);
        }
        throw new IllegalArgumentException("This consumer expects requests of type " + org.apache.http.HttpRequest.class.getCanonicalName());
    }
}
