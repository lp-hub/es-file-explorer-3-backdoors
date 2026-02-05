package jcifs.dcerpc;

import java.io.IOException;
import jcifs.smb.NtlmPasswordAuthentication;
import jcifs.smb.SmbFileInputStream;
import jcifs.smb.SmbFileOutputStream;
import jcifs.smb.SmbNamedPipe;
import jcifs.util.Encdec;

/* loaded from: classes.dex */
public class DcerpcPipeHandle extends DcerpcHandle {
    SmbNamedPipe pipe;
    SmbFileInputStream in = null;
    SmbFileOutputStream out = null;
    boolean isStart = true;

    public DcerpcPipeHandle(String str, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        this.binding = DcerpcHandle.parseBinding(str);
        String str2 = "smb://" + this.binding.server + "/IPC$/" + this.binding.endpoint.substring(6);
        String str3 = (String) this.binding.getOption("server");
        String str4 = str3 != null ? "&server=" + str3 : "";
        str4 = str3 != null ? str4 + "&address=" + ((String) this.binding.getOption("address")) : str4;
        this.pipe = new SmbNamedPipe(str4.length() > 0 ? str2 + "?" + str4.substring(1) : str2, 27198979, ntlmPasswordAuthentication);
    }

    @Override // jcifs.dcerpc.DcerpcHandle
    public void close() {
        this.state = 0;
        if (this.out != null) {
            this.out.close();
        }
    }

    @Override // jcifs.dcerpc.DcerpcHandle
    protected void doReceiveFragment(byte[] bArr, boolean z) {
        if (bArr.length < this.max_recv) {
            throw new IllegalArgumentException("buffer too small");
        }
        int readDirect = (!this.isStart || z) ? this.in.readDirect(bArr, 0, bArr.length) : this.in.read(bArr, 0, 1024);
        if (bArr[0] != 5 && bArr[1] != 0) {
            throw new IOException("Unexpected DCERPC PDU header");
        }
        this.isStart = ((bArr[3] & 255) & 2) == 2;
        short dec_uint16le = Encdec.dec_uint16le(bArr, 8);
        if (dec_uint16le > this.max_recv) {
            throw new IOException("Unexpected fragment length: " + ((int) dec_uint16le));
        }
        while (readDirect < dec_uint16le) {
            readDirect += this.in.readDirect(bArr, readDirect, dec_uint16le - readDirect);
        }
    }

    @Override // jcifs.dcerpc.DcerpcHandle
    protected void doSendFragment(byte[] bArr, int i, int i2, boolean z) {
        if (this.out != null && !this.out.isOpen()) {
            throw new IOException("DCERPC pipe is no longer open");
        }
        if (this.in == null) {
            this.in = (SmbFileInputStream) this.pipe.getNamedPipeInputStream();
        }
        if (this.out == null) {
            this.out = (SmbFileOutputStream) this.pipe.getNamedPipeOutputStream();
        }
        if (z) {
            this.out.writeDirect(bArr, i, i2, 1);
        } else {
            this.out.write(bArr, i, i2);
        }
    }
}
