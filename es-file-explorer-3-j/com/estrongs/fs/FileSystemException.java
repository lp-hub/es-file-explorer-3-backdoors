package com.estrongs.fs;

import com.estrongs.android.exception.AbstractException;

/* loaded from: classes.dex */
public class FileSystemException extends AbstractException {
    private static final long serialVersionUID = 1;

    public FileSystemException() {
    }

    public FileSystemException(String str) {
        super(str);
    }

    public FileSystemException(String str, Throwable th) {
        super(str, th);
    }

    public FileSystemException(Throwable th) {
        super(th);
    }
}
