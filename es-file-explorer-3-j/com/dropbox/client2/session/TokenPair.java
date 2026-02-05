package com.dropbox.client2.session;

import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class TokenPair implements Serializable {
    public final String key;
    public final String secret;

    public TokenPair(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("'key' must be non-null");
        }
        if (str.contains("|")) {
            throw new IllegalArgumentException("'key' must not contain a \"|\" character: \"" + str + "\"");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("'secret' must be non-null");
        }
        this.key = str;
        this.secret = str2;
    }

    public boolean equals(TokenPair tokenPair) {
        return this.key.equals(tokenPair.key) && this.secret.equals(tokenPair.secret);
    }

    public boolean equals(Object obj) {
        return (obj instanceof TokenPair) && equals((TokenPair) obj);
    }

    public int hashCode() {
        return this.key.hashCode() ^ (this.secret.hashCode() << 1);
    }

    public String toString() {
        return "{key=\"" + this.key + "\", secret=\"" + this.secret + "\"}";
    }
}
