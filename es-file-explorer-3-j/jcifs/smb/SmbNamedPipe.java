package jcifs.smb;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

/* loaded from: classes.dex */
public class SmbNamedPipe extends SmbFile {
    public static final int PIPE_TYPE_CALL = 256;
    public static final int PIPE_TYPE_DCE_TRANSACT = 1536;
    public static final int PIPE_TYPE_RDONLY = 1;
    public static final int PIPE_TYPE_RDWR = 3;
    public static final int PIPE_TYPE_TRANSACT = 512;
    public static final int PIPE_TYPE_WRONLY = 2;
    InputStream pipeIn;
    OutputStream pipeOut;
    int pipeType;

    public SmbNamedPipe(String str, int i) {
        super(str);
        this.pipeType = i;
        this.type = 16;
    }

    public SmbNamedPipe(String str, int i, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        super(str, ntlmPasswordAuthentication);
        this.pipeType = i;
        this.type = 16;
    }

    public SmbNamedPipe(URL url, int i, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        super(url, ntlmPasswordAuthentication);
        this.pipeType = i;
        this.type = 16;
    }

    public InputStream getNamedPipeInputStream() {
        if (this.pipeIn == null) {
            if ((this.pipeType & 256) == 256 || (this.pipeType & 512) == 512) {
                this.pipeIn = new TransactNamedPipeInputStream(this);
            } else {
                this.pipeIn = new SmbFileInputStream(this, (this.pipeType & (-65281)) | 32);
            }
        }
        return this.pipeIn;
    }

    public OutputStream getNamedPipeOutputStream() {
        if (this.pipeOut == null) {
            if ((this.pipeType & 256) == 256 || (this.pipeType & 512) == 512) {
                this.pipeOut = new TransactNamedPipeOutputStream(this);
            } else {
                this.pipeOut = new SmbFileOutputStream(this, false, (this.pipeType & (-65281)) | 32);
            }
        }
        return this.pipeOut;
    }
}
