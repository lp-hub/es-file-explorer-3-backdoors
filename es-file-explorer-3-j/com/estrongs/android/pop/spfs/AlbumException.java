package com.estrongs.android.pop.spfs;

import com.estrongs.android.exception.AbstractException;

/* loaded from: classes.dex */
public class AlbumException extends AbstractException {
    private static final long serialVersionUID = 1;

    public AlbumException() {
    }

    public AlbumException(String str) {
        super(str);
    }

    public AlbumException(String str, Throwable th) {
        super(str, th);
    }

    public AlbumException(Throwable th) {
        super(th);
    }
}
