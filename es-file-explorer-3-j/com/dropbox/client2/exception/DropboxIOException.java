package com.dropbox.client2.exception;

import java.io.IOException;

/* loaded from: classes.dex */
public class DropboxIOException extends DropboxException {
    private static final long serialVersionUID = 2;

    public DropboxIOException(IOException iOException) {
        super(iOException);
    }

    public DropboxIOException(String str) {
        super(str);
    }
}
