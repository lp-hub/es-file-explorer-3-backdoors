package jcifs.netbios;

import java.io.InputStream;

/* loaded from: classes.dex */
class SocketInputStream extends InputStream {
    private static final int TMP_BUFFER_SIZE = 256;
    private int bip;
    private InputStream in;
    private int n;
    private SessionServicePacket ssp;
    private int tot;
    private byte[] header = new byte[4];
    private byte[] tmp = new byte[256];

    /* JADX INFO: Access modifiers changed from: package-private */
    public SocketInputStream(InputStream inputStream) {
        this.in = inputStream;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.bip > 0 ? this.bip : this.in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.in.close();
    }

    @Override // java.io.InputStream
    public synchronized int read() {
        return read(this.tmp, 0, 1) < 0 ? -1 : this.tmp[0] & 255;
    }

    @Override // java.io.InputStream
    public synchronized int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public synchronized int read(byte[] bArr, int i, int i2) {
        int i3 = -1;
        synchronized (this) {
            if (i2 != 0) {
                this.tot = 0;
                while (true) {
                    if (this.bip <= 0) {
                        switch (SessionServicePacket.readPacketType(this.in, this.header, 0)) {
                            case -1:
                                if (this.tot > 0) {
                                    i3 = this.tot;
                                    break;
                                }
                                break;
                            case 0:
                                this.bip = SessionServicePacket.readLength(this.header, 0);
                                break;
                            case 133:
                                break;
                        }
                    } else {
                        this.n = this.in.read(bArr, i, Math.min(i2, this.bip));
                        if (this.n != -1) {
                            this.tot += this.n;
                            i += this.n;
                            i2 -= this.n;
                            this.bip -= this.n;
                            if (i2 == 0) {
                                i3 = this.tot;
                            }
                        } else if (this.tot > 0) {
                            i3 = this.tot;
                        }
                    }
                }
            } else {
                i3 = 0;
            }
        }
        return i3;
    }

    @Override // java.io.InputStream
    public synchronized long skip(long j) {
        long j2 = 0;
        synchronized (this) {
            if (j > 0) {
                long j3 = j;
                while (j3 > 0) {
                    int read = read(this.tmp, 0, (int) Math.min(256L, j3));
                    if (read < 0) {
                        break;
                    }
                    j3 -= read;
                }
                j2 = j - j3;
            }
        }
        return j2;
    }
}
