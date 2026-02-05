package com.estrongs.io.archive.aeszip;

import java.io.InputStream;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import java.util.zip.ZipEntry;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c extends CheckedInputStream {

    /* renamed from: a, reason: collision with root package name */
    private final ZipEntry f3193a;

    /* renamed from: b, reason: collision with root package name */
    private final int f3194b;

    public c(InputStream inputStream, ZipEntry zipEntry, int i) {
        super(inputStream, new CRC32());
        this.f3193a = zipEntry;
        this.f3194b = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        do {
            try {
            } catch (Throwable th) {
                super.close();
                throw th;
            }
        } while (skip(Long.MAX_VALUE) > 0);
        super.close();
        long crc = this.f3193a.getCrc();
        long value = getChecksum().getValue();
        if (crc != value) {
            a.b(this.f3193a.getName(), crc, value);
        }
    }

    @Override // java.util.zip.CheckedInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        long b2;
        b2 = a.b(this, j, new byte[this.f3194b]);
        return b2;
    }
}
