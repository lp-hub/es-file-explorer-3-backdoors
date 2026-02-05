package org.apache.commons.net.io;

import java.io.FilterInputStream;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class ToNetASCIIInputStream extends FilterInputStream {
    private static final int __LAST_WAS_CR = 1;
    private static final int __LAST_WAS_NL = 2;
    private static final int __NOTHING_SPECIAL = 0;
    private int __status;

    public ToNetASCIIInputStream(InputStream inputStream) {
        super(inputStream);
        this.__status = 0;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        int available = this.in.available();
        return this.__status == 2 ? available + 1 : available;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        if (this.__status == 2) {
            this.__status = 0;
            return 10;
        }
        int read = this.in.read();
        switch (read) {
            case 10:
                if (this.__status != 1) {
                    this.__status = 2;
                    return 13;
                }
                break;
            case 13:
                this.__status = 1;
                return 13;
        }
        this.__status = 0;
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
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
        int i6 = i4;
        int i7 = read;
        int i8 = i6;
        while (true) {
            i3 = i5 + 1;
            bArr[i5] = (byte) i7;
            i8--;
            if (i8 <= 0 || (i7 = read()) == -1) {
                break;
            }
            i5 = i3;
        }
        return i3 - i;
    }
}
