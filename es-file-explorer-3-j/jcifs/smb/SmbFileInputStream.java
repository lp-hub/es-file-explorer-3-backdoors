package jcifs.smb;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import jcifs.util.LogStream;
import jcifs.util.transport.TransportException;

/* loaded from: classes.dex */
public class SmbFileInputStream extends InputStream {
    private int access;
    SmbFile file;
    private long fp;
    private int openFlags;
    private int readSize;
    private byte[] tmp;

    public SmbFileInputStream(String str) {
        this(new SmbFile(str));
    }

    public SmbFileInputStream(SmbFile smbFile) {
        this(smbFile, 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SmbFileInputStream(SmbFile smbFile, int i) {
        this.tmp = new byte[1];
        this.file = smbFile;
        this.openFlags = i & 65535;
        this.access = (i >>> 16) & 65535;
        if (smbFile.type != 16) {
            smbFile.open(i, this.access, 128, 0);
            this.openFlags &= -81;
        } else {
            smbFile.connect0();
        }
        this.readSize = Math.min(smbFile.tree.session.transport.rcv_buf_size - 70, smbFile.tree.session.transport.server.maxBufferSize - 70);
    }

    @Override // java.io.InputStream
    public int available() {
        int i;
        if (this.file.type != 16) {
            return 0;
        }
        try {
            SmbNamedPipe smbNamedPipe = (SmbNamedPipe) this.file;
            this.file.open(32, smbNamedPipe.pipeType & 16711680, 128, 0);
            TransPeekNamedPipe transPeekNamedPipe = new TransPeekNamedPipe(this.file.unc, this.file.fid);
            TransPeekNamedPipeResponse transPeekNamedPipeResponse = new TransPeekNamedPipeResponse(smbNamedPipe);
            smbNamedPipe.send(transPeekNamedPipe, transPeekNamedPipeResponse);
            if (transPeekNamedPipeResponse.status == 1 || transPeekNamedPipeResponse.status == 4) {
                this.file.opened = false;
                i = 0;
            } else {
                i = transPeekNamedPipeResponse.available;
            }
            return i;
        } catch (SmbException e) {
            throw seToIoe(e);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            this.file.close();
            this.tmp = null;
        } catch (SmbException e) {
            throw seToIoe(e);
        }
    }

    @Override // java.io.InputStream
    public int read() {
        if (read(this.tmp, 0, 1) == -1) {
            return -1;
        }
        return this.tmp[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        return readDirect(bArr, i, i2);
    }

    public int readDirect(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        if (i2 <= 0) {
            return 0;
        }
        long j = this.fp;
        if (this.tmp == null) {
            throw new IOException("Bad file descriptor");
        }
        this.file.open(this.openFlags, this.access, 128, 0);
        SmbFile smbFile = this.file;
        LogStream logStream = SmbFile.log;
        if (LogStream.level >= 4) {
            SmbFile smbFile2 = this.file;
            SmbFile.log.println("read: fid=" + this.file.fid + ",off=" + i + ",len=" + i2);
        }
        SmbComReadAndXResponse smbComReadAndXResponse = new SmbComReadAndXResponse(bArr, i);
        if (this.file.type == 16) {
            smbComReadAndXResponse.responseTimeout = 0L;
        }
        do {
            i3 = i2 > this.readSize ? this.readSize : i2;
            SmbFile smbFile3 = this.file;
            LogStream logStream2 = SmbFile.log;
            if (LogStream.level >= 4) {
                SmbFile smbFile4 = this.file;
                SmbFile.log.println("read: len=" + i2 + ",r=" + i3 + ",fp=" + this.fp);
            }
            try {
                SmbComReadAndX smbComReadAndX = new SmbComReadAndX(this.file.fid, this.fp, i3, null);
                if (this.file.type == 16) {
                    smbComReadAndX.remaining = 1024;
                    smbComReadAndX.maxCount = 1024;
                    smbComReadAndX.minCount = 1024;
                }
                this.file.send(smbComReadAndX, smbComReadAndXResponse);
                i4 = smbComReadAndXResponse.dataLength;
                if (i4 > 0) {
                    this.fp += i4;
                    i2 -= i4;
                    smbComReadAndXResponse.off += i4;
                    if (i2 <= 0) {
                        break;
                    }
                } else {
                    return (int) (this.fp - j > 0 ? this.fp - j : -1L);
                }
            } catch (SmbException e) {
                if (this.file.type == 16 && e.getNtStatus() == -1073741493) {
                    return -1;
                }
                throw seToIoe(e);
            }
        } while (i4 == i3);
        return (int) (this.fp - j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [jcifs.util.transport.TransportException] */
    protected IOException seToIoe(SmbException smbException) {
        Throwable rootCause = smbException.getRootCause();
        if (rootCause instanceof TransportException) {
            ?? r0 = (TransportException) rootCause;
            smbException = r0;
            rootCause = ((TransportException) r0).getRootCause();
        }
        if (!(rootCause instanceof InterruptedException)) {
            return smbException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException(rootCause.getMessage());
        interruptedIOException.initCause(rootCause);
        return interruptedIOException;
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        if (j <= 0) {
            return 0L;
        }
        this.fp += j;
        return j;
    }
}
