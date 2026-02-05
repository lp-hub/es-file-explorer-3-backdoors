package com.estrongs.android.pop.spfs;

import java.io.PipedInputStream;

/* loaded from: classes.dex */
public class UploadPipedInputStream extends PipedInputStream {
    private long count = 0;
    private long length;

    public UploadPipedInputStream(long j) {
        this.length = j;
    }

    @Override // java.io.PipedInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) {
        int read;
        if (this.count >= this.length) {
            read = -1;
        } else {
            read = super.read(bArr, i, i2);
            this.count += read;
            if (this.count > this.length) {
                read -= (int) (this.count - this.length);
            }
        }
        return read;
    }
}
