package com.estrongs.old.fs.impl.a;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.net.ftp.FTPClient;

/* loaded from: classes.dex */
public class e extends FilterOutputStream {

    /* renamed from: a, reason: collision with root package name */
    private final FTPClient f3235a;

    public e(OutputStream outputStream, FTPClient fTPClient) {
        super(outputStream);
        this.f3235a = fTPClient;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        if (this.f3235a != null) {
            if (this.f3235a instanceof d) {
                ((d) this.f3235a).f3233a = true;
            }
            try {
                this.f3235a.completePendingCommand();
                this.f3235a.logout();
                this.f3235a.disconnect();
            } catch (IOException e) {
            }
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        this.out.write(bArr, i, i2);
    }
}
