package com.gmail.yuyang226.flickr.oauth;

import com.gmail.yuyang226.flickr.FlickrException;

/* loaded from: classes.dex */
public class OAuthException extends FlickrException {
    private static final long serialVersionUID = 1;

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
