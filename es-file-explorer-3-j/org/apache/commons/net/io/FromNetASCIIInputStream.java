package org.apache.commons.net.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import org.apache.commons.net.SocketClient;

/* loaded from: classes.dex */
public final class FromNetASCIIInputStream extends PushbackInputStream {
    private int __length;
    static final String _lineSeparator = System.getProperty("line.separator");
    static final boolean _noConversionRequired = _lineSeparator.equals(SocketClient.NETASCII_EOL);
    static final byte[] _lineSeparatorBytes = _lineSeparator.getBytes();

    public FromNetASCIIInputStream(InputStream inputStream) {
        super(inputStream, _lineSeparatorBytes.length + 1);
        this.__length = 0;
    }

    private int __read() {
        int read = super.read();
        if (read != 13) {
            return read;
        }
        int read2 = super.read();
        if (read2 != 10) {
            if (read2 != -1) {
                unread(read2);
            }
            return 13;
        }
        unread(_lineSeparatorBytes);
        this.__length--;
        return super.read();
    }

    public static final boolean isConversionRequired() {
        return !_noConversionRequired;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() {
        if (this.in == null) {
            throw new IOException("Stream closed");
        }
        return (this.buf.length - this.pos) + this.in.available();
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() {
        return _noConversionRequired ? super.read() : __read();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3;
        if (_noConversionRequired) {
            return super.read(bArr, i, i2);
        }
        if (i2 < 1) {
            return 0;
        }
        int available = available();
        if (i2 > available) {
            i2 = available;
        }
        this.__length = i2;
        if (this.__length < 1) {
            this.__length = 1;
        }
        int __read = __read();
        if (__read == -1) {
            return -1;
        }
        int i4 = i;
        while (true) {
            i3 = i4 + 1;
            bArr[i4] = (byte) __read;
            int i5 = this.__length - 1;
            this.__length = i5;
            if (i5 <= 0 || (__read = __read()) == -1) {
                break;
            }
            i4 = i3;
        }
        return i3 - i;
    }
}
