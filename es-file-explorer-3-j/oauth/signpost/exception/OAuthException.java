package oauth.signpost.exception;

/* loaded from: classes.dex */
public abstract class OAuthException extends Exception {
    public OAuthException(String str) {
        super(str);
    }

    public OAuthException(String str, Throwable th) {
        super(str, th);
    }

    public OAuthException(Throwable th) {
        super(th);
    }
}
