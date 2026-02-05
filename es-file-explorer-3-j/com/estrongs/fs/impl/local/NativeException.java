package com.estrongs.fs.impl.local;

import com.estrongs.fs.FileSystemException;

/* loaded from: classes.dex */
public class NativeException extends FileSystemException {
    private static final long serialVersionUID = 2;

    public NativeException() {
    }

    public NativeException(String str) {
        super(str);
    }

    public NativeException(String str, Throwable th) {
        super(str, th);
    }

    public NativeException(Throwable th) {
        super(th);
    }
}
