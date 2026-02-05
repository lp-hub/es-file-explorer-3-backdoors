package jcifs.smb;

import java.io.IOException;
import jcifs.util.LogStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class TransactNamedPipeInputStream extends SmbFileInputStream {
    private static final int INIT_PIPE_SIZE = 4096;
    private int beg_idx;
    private boolean dcePipe;
    Object lock;
    private int nxt_idx;
    private byte[] pipe_buf;
    private int used;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransactNamedPipeInputStream(SmbNamedPipe smbNamedPipe) {
        super(smbNamedPipe, (smbNamedPipe.pipeType & (-65281)) | 32);
        this.pipe_buf = new byte[4096];
        this.dcePipe = (smbNamedPipe.pipeType & SmbNamedPipe.PIPE_TYPE_DCE_TRANSACT) != 1536;
        this.lock = new Object();
    }

    @Override // jcifs.smb.SmbFileInputStream, java.io.InputStream
    public int available() {
        SmbFile smbFile = this.file;
        LogStream logStream = SmbFile.log;
        if (LogStream.level < 3) {
            return 0;
        }
        SmbFile smbFile2 = this.file;
        SmbFile.log.println("Named Pipe available() does not apply to TRANSACT Named Pipes");
        return 0;
    }

    public int dce_read(byte[] bArr, int i, int i2) {
        return super.read(bArr, i, i2);
    }

    @Override // jcifs.smb.SmbFileInputStream, java.io.InputStream
    public int read() {
        int i;
        synchronized (this.lock) {
            while (this.used == 0) {
                try {
                    this.lock.wait();
                } catch (InterruptedException e) {
                    throw new IOException(e.getMessage());
                }
            }
            i = this.pipe_buf[this.beg_idx] & 255;
            this.beg_idx = (this.beg_idx + 1) % this.pipe_buf.length;
        }
        return i;
    }

    @Override // jcifs.smb.SmbFileInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // jcifs.smb.SmbFileInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3 = 0;
        if (i2 > 0) {
            synchronized (this.lock) {
                while (this.used == 0) {
                    try {
                        this.lock.wait();
                    } catch (InterruptedException e) {
                        throw new IOException(e.getMessage());
                    }
                }
                int length = this.pipe_buf.length - this.beg_idx;
                i3 = i2 > this.used ? this.used : i2;
                if (this.used <= length || i3 <= length) {
                    System.arraycopy(this.pipe_buf, this.beg_idx, bArr, i, i3);
                } else {
                    System.arraycopy(this.pipe_buf, this.beg_idx, bArr, i, length);
                    System.arraycopy(this.pipe_buf, 0, bArr, i + length, i3 - length);
                }
                this.used -= i3;
                this.beg_idx = (this.beg_idx + i3) % this.pipe_buf.length;
            }
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int receive(byte[] bArr, int i, int i2) {
        if (i2 > this.pipe_buf.length - this.used) {
            int length = this.pipe_buf.length * 2;
            if (i2 > length - this.used) {
                length = this.used + i2;
            }
            byte[] bArr2 = this.pipe_buf;
            this.pipe_buf = new byte[length];
            int length2 = bArr2.length - this.beg_idx;
            if (this.used > length2) {
                System.arraycopy(bArr2, this.beg_idx, this.pipe_buf, 0, length2);
                System.arraycopy(bArr2, 0, this.pipe_buf, length2, this.used - length2);
            } else {
                System.arraycopy(bArr2, this.beg_idx, this.pipe_buf, 0, this.used);
            }
            this.beg_idx = 0;
            this.nxt_idx = this.used;
        }
        int length3 = this.pipe_buf.length - this.nxt_idx;
        if (i2 > length3) {
            System.arraycopy(bArr, i, this.pipe_buf, this.nxt_idx, length3);
            System.arraycopy(bArr, i + length3, this.pipe_buf, 0, i2 - length3);
        } else {
            System.arraycopy(bArr, i, this.pipe_buf, this.nxt_idx, i2);
        }
        this.nxt_idx = (this.nxt_idx + i2) % this.pipe_buf.length;
        this.used += i2;
        return i2;
    }
}
