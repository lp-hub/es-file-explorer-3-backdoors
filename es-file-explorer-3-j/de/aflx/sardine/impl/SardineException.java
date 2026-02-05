package de.aflx.sardine.impl;

import org.apache.http.client.HttpResponseException;

/* loaded from: classes.dex */
public class SardineException extends HttpResponseException {
    private static final long serialVersionUID = -3900043433469104564L;
    private String responsePhrase;

    public SardineException(String str, int i, String str2) {
        super(i, str);
        this.responsePhrase = str2;
    }

    public String getResponsePhrase() {
        return this.responsePhrase;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return String.valueOf(super.toString()) + " (" + getStatusCode() + " " + this.responsePhrase + ")";
    }
}
