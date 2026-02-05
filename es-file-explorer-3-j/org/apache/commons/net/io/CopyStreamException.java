package org.apache.commons.net.io;

import java.io.IOException;

/* loaded from: classes.dex */
public class CopyStreamException extends IOException {
    private static final long serialVersionUID = -2602899129433221532L;
    private final IOException ioException;
    private final long totalBytesTransferred;

    public CopyStreamException(String str, long j, IOException iOException) {
        super(str);
        this.totalBytesTransferred = j;
        this.ioException = iOException;
    }

    public IOException getIOException() {
        return this.ioException;
    }

    public long getTotalBytesTransferred() {
        return this.totalBytesTransferred;
    }
}
