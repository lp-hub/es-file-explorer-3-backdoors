package com.estrongs.io.archive.aeszip;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.CRC32;
import java.util.zip.Checksum;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import java.util.zip.ZipEntry;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f3200a;

    /* renamed from: b, reason: collision with root package name */
    private final Checksum f3201b;
    private final byte[] c;
    private final Inflater d;
    private final byte[] e;
    private final ZipEntry f;
    private boolean g;

    static {
        f3200a = !a.class.desiredAssertionStatus();
    }

    public g(InputStream inputStream, ZipEntry zipEntry, int i) {
        super(inputStream);
        Inflater g;
        this.f3201b = new CRC32();
        this.c = new byte[1];
        g = a.g();
        this.d = g;
        this.e = new byte[i];
        this.f = zipEntry;
    }

    private void a() {
        if (this.g) {
            throw new IOException("input stream has been closed");
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.g) {
            return;
        }
        do {
            try {
            } catch (Throwable th) {
                this.g = true;
                a.b(this.d);
                super.close();
                throw th;
            }
        } while (skip(Long.MAX_VALUE) > 0);
        this.g = true;
        a.b(this.d);
        super.close();
        long crc = this.f.getCrc();
        long value = this.f3201b.getValue();
        if (crc != value) {
            a.b(this.f.getName(), crc, value);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int read;
        do {
            read = read(this.c, 0, 1);
        } while (read == 0);
        if (read > 0) {
            return this.c[0] & 255;
        }
        return -1;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        a();
        if (bArr == null) {
            throw new NullPointerException();
        }
        int i3 = i + i2;
        if (((bArr.length - i3) | i | i2 | i3) < 0) {
            throw new IndexOutOfBoundsException();
        }
        int read = this.in.read(bArr, i, i2);
        if (read >= 0) {
            this.d.setInput(bArr, i, read);
        } else {
            bArr[i] = 0;
            this.d.setInput(bArr, i, 1);
        }
        while (true) {
            try {
                int inflate = this.d.inflate(this.e, 0, this.e.length);
                if (inflate <= 0) {
                    break;
                }
                this.f3201b.update(this.e, 0, inflate);
            } catch (DataFormatException e) {
                IOException iOException = new IOException(e.toString());
                iOException.initCause(e);
                throw iOException;
            }
        }
        if (!f3200a && read < 0 && !this.d.finished()) {
            throw new AssertionError();
        }
        if (!f3200a && read >= 0 && !this.d.needsInput()) {
            throw new AssertionError();
        }
        if (f3200a || !this.d.needsDictionary()) {
            return read;
        }
        throw new AssertionError();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        throw new IOException("mark()/reset() not supported");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        long b2;
        b2 = a.b(this, j, new byte[this.e.length]);
        return b2;
    }
}
