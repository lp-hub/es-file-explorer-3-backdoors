package oauth.signpost.exception;

/* loaded from: classes.dex */
public class OAuthCommunicationException extends OAuthException {
    private String responseBody;

    public OAuthCommunicationException(Exception exc) {
        super("Communication with the service provider failed: " + exc.getLocalizedMessage(), exc);
    }

    public OAuthCommunicationException(String str, String str2) {
        super(str);
        this.responseBody = str2;
    }

    public String getResponseBody() {
        return this.responseBody;
    }
}
