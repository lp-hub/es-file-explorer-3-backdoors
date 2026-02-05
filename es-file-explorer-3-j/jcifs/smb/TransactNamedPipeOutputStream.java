package jcifs.smb;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class TransactNamedPipeOutputStream extends SmbFileOutputStream {
    private boolean dcePipe;
    private String path;
    private SmbNamedPipe pipe;
    private byte[] tmp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransactNamedPipeOutputStream(SmbNamedPipe smbNamedPipe) {
        super(smbNamedPipe, false, (smbNamedPipe.pipeType & (-65281)) | 32);
        this.tmp = new byte[1];
        this.pipe = smbNamedPipe;
        this.dcePipe = (smbNamedPipe.pipeType & SmbNamedPipe.PIPE_TYPE_DCE_TRANSACT) == 1536;
        this.path = smbNamedPipe.unc;
    }

    @Override // jcifs.smb.SmbFileOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.pipe.close();
    }

    @Override // jcifs.smb.SmbFileOutputStream, java.io.OutputStream
    public void write(int i) {
        this.tmp[0] = (byte) i;
        write(this.tmp, 0, 1);
    }

    @Override // jcifs.smb.SmbFileOutputStream, java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // jcifs.smb.SmbFileOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        if (i2 < 0) {
            i2 = 0;
        }
        if ((this.pipe.pipeType & 256) == 256) {
            this.pipe.send(new TransWaitNamedPipe(this.path), new TransWaitNamedPipeResponse());
            this.pipe.send(new TransCallNamedPipe(this.path, bArr, i, i2), new TransCallNamedPipeResponse(this.pipe));
        } else if ((this.pipe.pipeType & 512) == 512) {
            ensureOpen();
            TransTransactNamedPipe transTransactNamedPipe = new TransTransactNamedPipe(this.pipe.fid, bArr, i, i2);
            if (this.dcePipe) {
                transTransactNamedPipe.maxDataCount = 1024;
            }
            this.pipe.send(transTransactNamedPipe, new TransTransactNamedPipeResponse(this.pipe));
        }
    }
}
