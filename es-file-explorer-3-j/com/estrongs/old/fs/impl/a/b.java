package com.estrongs.old.fs.impl.a;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.net.ftp.FTPClient;

/* loaded from: classes.dex */
public class b extends BufferedInputStream {

    /* renamed from: a, reason: collision with root package name */
    public FTPClient f3230a;

    public b(InputStream inputStream, FTPClient fTPClient) {
        super(inputStream, 8192);
        this.f3230a = fTPClient;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() {
        if (this.buf == null || this.in == null) {
            return 0;
        }
        return (this.buf.length - this.pos) + this.in.available();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0030 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[SYNTHETIC] */
    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() {
        boolean z;
        Throwable th;
        boolean z2 = false;
        try {
            super.close();
            if (this.f3230a != null) {
                try {
                    this.f3230a.completePendingCommand();
                    this.f3230a.logout();
                } catch (IOException e) {
                    z2 = true;
                }
                if (z2 && (this.f3230a instanceof d)) {
                    ((d) this.f3230a).f3233a = true;
                }
                try {
                    this.f3230a.disconnect();
                } catch (IOException e2) {
                }
            }
        } catch (IOException e3) {
            try {
                throw e3;
            } catch (Throwable th2) {
                th = th2;
                z = true;
                if (this.f3230a != null) {
                    throw th;
                }
                try {
                    this.f3230a.completePendingCommand();
                    this.f3230a.logout();
                } catch (IOException e4) {
                    z = true;
                }
                if (z && (this.f3230a instanceof d)) {
                    ((d) this.f3230a).f3233a = true;
                }
                try {
                    this.f3230a.disconnect();
                    throw th;
                } catch (IOException e5) {
                    throw th;
                }
            }
        } catch (Throwable th3) {
            z = false;
            th = th3;
            if (this.f3230a != null) {
            }
        }
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() {
        return super.read();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3;
        if (i2 < 1) {
            return 0;
        }
        int available = available();
        if (i2 <= available) {
            available = i2;
        }
        int i4 = available >= 1 ? available : 1;
        int read = read();
        if (read == -1) {
            return -1;
        }
        int i5 = i;
        while (true) {
            i3 = i5 + 1;
            bArr[i5] = (byte) read;
            i4--;
            if (i4 <= 0 || (read = read()) == -1) {
                break;
            }
            i5 = i3;
        }
        return i3 - i;
    }

    @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        if (j <= 0) {
            return 0L;
        }
        this.pos = (int) (this.pos + j);
        return j;
    }
}
