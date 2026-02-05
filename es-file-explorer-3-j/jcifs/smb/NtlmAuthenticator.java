package jcifs.smb;

/* loaded from: classes.dex */
public abstract class NtlmAuthenticator {
    private static NtlmAuthenticator auth;
    private SmbAuthException sae;
    private String url;

    public static NtlmPasswordAuthentication requestNtlmPasswordAuthentication(String str, SmbAuthException smbAuthException) {
        NtlmPasswordAuthentication ntlmPasswordAuthentication;
        if (auth == null) {
            return null;
        }
        synchronized (auth) {
            auth.url = str;
            auth.sae = smbAuthException;
            ntlmPasswordAuthentication = auth.getNtlmPasswordAuthentication();
        }
        return ntlmPasswordAuthentication;
    }

    private void reset() {
        this.url = null;
        this.sae = null;
    }

    public static synchronized void setDefault(NtlmAuthenticator ntlmAuthenticator) {
        synchronized (NtlmAuthenticator.class) {
            if (auth == null) {
                auth = ntlmAuthenticator;
            }
        }
    }

    protected NtlmPasswordAuthentication getNtlmPasswordAuthentication() {
        return null;
    }

    protected final SmbAuthException getRequestingException() {
        return this.sae;
    }

    protected final String getRequestingURL() {
        return this.url;
    }
}
