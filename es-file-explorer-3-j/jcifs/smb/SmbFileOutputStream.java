package jcifs.smb;

import java.io.IOException;
import java.io.OutputStream;
import jcifs.util.LogStream;

/* loaded from: classes.dex */
public class SmbFileOutputStream extends OutputStream {
    private int access;
    private boolean append;
    private SmbFile file;
    private long fp;
    private int openFlags;
    private SmbComWrite req;
    private SmbComWriteAndX reqx;
    private SmbComWriteResponse rsp;
    private SmbComWriteAndXResponse rspx;
    private byte[] tmp;
    private boolean useNTSmbs;
    private int writeSize;

    public SmbFileOutputStream(String str) {
        this(str, false);
    }

    public SmbFileOutputStream(String str, int i) {
        this(new SmbFile(str, "", null, i), false);
    }

    public SmbFileOutputStream(String str, boolean z) {
        this(new SmbFile(str), z);
    }

    public SmbFileOutputStream(SmbFile smbFile) {
        this(smbFile, false);
    }

    public SmbFileOutputStream(SmbFile smbFile, boolean z) {
        this(smbFile, z, z ? 22 : 82);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SmbFileOutputStream(SmbFile smbFile, boolean z, int i) {
        this.tmp = new byte[1];
        this.file = smbFile;
        this.append = z;
        this.openFlags = i;
        this.access = (i >>> 16) & 65535;
        if (z) {
            try {
                this.fp = smbFile.length();
            } catch (SmbAuthException e) {
                throw e;
            } catch (SmbException e2) {
                this.fp = 0L;
            }
        }
        if ((smbFile instanceof SmbNamedPipe) && smbFile.unc.startsWith("\\pipe\\")) {
            smbFile.unc = smbFile.unc.substring(5);
            smbFile.send(new TransWaitNamedPipe("\\pipe" + smbFile.unc), new TransWaitNamedPipeResponse());
        }
        smbFile.open(i, this.access | 2, 128, 0);
        this.openFlags &= -81;
        this.writeSize = smbFile.tree.session.transport.snd_buf_size - 70;
        this.useNTSmbs = smbFile.tree.session.transport.hasCapability(16);
        if (this.useNTSmbs) {
            this.reqx = new SmbComWriteAndX();
            this.rspx = new SmbComWriteAndXResponse();
        } else {
            this.req = new SmbComWrite();
            this.rsp = new SmbComWriteResponse();
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.file.close();
        this.tmp = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ensureOpen() {
        if (this.file.isOpen()) {
            return;
        }
        this.file.open(this.openFlags, this.access | 2, 128, 0);
        if (this.append) {
            this.fp = this.file.length();
        }
    }

    public boolean isOpen() {
        return this.file.isOpen();
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.tmp[0] = (byte) i;
        write(this.tmp, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        if (!this.file.isOpen() && (this.file instanceof SmbNamedPipe)) {
            this.file.send(new TransWaitNamedPipe("\\pipe" + this.file.unc), new TransWaitNamedPipeResponse());
        }
        writeDirect(bArr, i, i2, 0);
    }

    public void writeDirect(byte[] bArr, int i, int i2, int i3) {
        if (i2 <= 0) {
            return;
        }
        if (this.tmp == null) {
            throw new IOException("Bad file descriptor");
        }
        ensureOpen();
        SmbFile smbFile = this.file;
        LogStream logStream = SmbFile.log;
        if (LogStream.level >= 4) {
            SmbFile smbFile2 = this.file;
            SmbFile.log.println("write: fid=" + this.file.fid + ",off=" + i + ",len=" + i2);
        }
        do {
            int i4 = i;
            int i5 = i2 > this.writeSize ? this.writeSize : i2;
            if (this.useNTSmbs) {
                this.reqx.setParam(this.file.fid, this.fp, i2 - i5, bArr, i4, i5);
                if ((i3 & 1) != 0) {
                    this.reqx.setParam(this.file.fid, this.fp, i2, bArr, i4, i5);
                    this.reqx.writeMode = 8;
                } else {
                    this.reqx.writeMode = 0;
                }
                this.file.send(this.reqx, this.rspx);
                this.fp += this.rspx.count;
                i2 = (int) (i2 - this.rspx.count);
                i = (int) (i4 + this.rspx.count);
            } else {
                this.req.setParam(this.file.fid, this.fp, i2 - i5, bArr, i4, i5);
                this.fp += this.rsp.count;
                i2 = (int) (i2 - this.rsp.count);
                i = (int) (i4 + this.rsp.count);
                this.file.send(this.req, this.rsp);
            }
        } while (i2 > 0);
    }
}
