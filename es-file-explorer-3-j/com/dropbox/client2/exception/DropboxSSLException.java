package com.dropbox.client2.exception;

import javax.net.ssl.SSLException;

/* loaded from: classes.dex */
public class DropboxSSLException extends DropboxIOException {
    private static final long serialVersionUID = 1;

    public DropboxSSLException(SSLException sSLException) {
        super(sSLException);
    }
}
