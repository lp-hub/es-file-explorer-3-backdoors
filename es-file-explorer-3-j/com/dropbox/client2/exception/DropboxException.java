package com.dropbox.client2.exception;

/* loaded from: classes.dex */
public class DropboxException extends Exception {
    private static final long serialVersionUID = 1;

    /* JADX INFO: Access modifiers changed from: protected */
    public DropboxException() {
    }

    public DropboxException(String str) {
        super(str);
    }

    public DropboxException(String str, Throwable th) {
        super(str, th);
    }

    public DropboxException(Throwable th) {
        super(th);
    }
}
