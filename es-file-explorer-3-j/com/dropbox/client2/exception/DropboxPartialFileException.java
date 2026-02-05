package com.dropbox.client2.exception;

/* loaded from: classes.dex */
public class DropboxPartialFileException extends DropboxException {
    private static final long serialVersionUID = 2;
    public final long bytesTransferred;

    public DropboxPartialFileException(long j) {
        this.bytesTransferred = j;
    }
}
