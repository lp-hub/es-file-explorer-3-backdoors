package org.apache.commons.net.io;

import java.io.FilterOutputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public final class ToNetASCIIOutputStream extends FilterOutputStream {
    private boolean __lastWasCR;

    public ToNetASCIIOutputStream(OutputStream outputStream) {
        super(outputStream);
        this.__lastWasCR = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(int i) {
        switch (i) {
            case 10:
                if (!this.__lastWasCR) {
                    this.out.write(13);
                }
            case 11:
            case 12:
            default:
                this.__lastWasCR = false;
                this.out.write(i);
                break;
            case 13:
                this.__lastWasCR = true;
                this.out.write(13);
                break;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) {
        while (true) {
            int i3 = i2 - 1;
            if (i2 > 0) {
                int i4 = i + 1;
                write(bArr[i]);
                i2 = i3;
                i = i4;
            }
        }
    }
}
