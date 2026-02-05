package org.apache.commons.net.io;

import java.io.FilterOutputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class FromNetASCIIOutputStream extends FilterOutputStream {
    private boolean __lastWasCR;

    public FromNetASCIIOutputStream(OutputStream outputStream) {
        super(outputStream);
        this.__lastWasCR = false;
    }

    private void __write(int i) {
        switch (i) {
            case 10:
                if (this.__lastWasCR) {
                    this.out.write(FromNetASCIIInputStream._lineSeparatorBytes);
                    this.__lastWasCR = false;
                    return;
                } else {
                    this.__lastWasCR = false;
                    this.out.write(10);
                    return;
                }
            case 11:
            case 12:
            default:
                if (this.__lastWasCR) {
                    this.out.write(13);
                    this.__lastWasCR = false;
                }
                this.out.write(i);
                return;
            case 13:
                this.__lastWasCR = true;
                return;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (FromNetASCIIInputStream._noConversionRequired) {
            super.close();
        } else {
            if (this.__lastWasCR) {
                this.out.write(13);
            }
            super.close();
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(int i) {
        if (FromNetASCIIInputStream._noConversionRequired) {
            this.out.write(i);
        } else {
            __write(i);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) {
        if (FromNetASCIIInputStream._noConversionRequired) {
            this.out.write(bArr, i, i2);
        } else {
            while (true) {
                int i3 = i2 - 1;
                if (i2 <= 0) {
                    break;
                }
                int i4 = i + 1;
                __write(bArr[i]);
                i2 = i3;
                i = i4;
            }
        }
    }
}
