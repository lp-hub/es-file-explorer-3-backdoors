package jcifs.smb;

import java.io.UnsupportedEncodingException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class NetServerEnum2 extends SmbComTransaction {
    static final String[] DESCR = {"WrLehDO\u0000B16BBDz\u0000", "WrLehDz\u0000B16BBDz\u0000"};
    static final int SV_TYPE_ALL = -1;
    static final int SV_TYPE_DOMAIN_ENUM = Integer.MIN_VALUE;
    String domain;
    String lastName = null;
    int serverTypes;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NetServerEnum2(String str, int i) {
        this.domain = str;
        this.serverTypes = i;
        this.command = (byte) 37;
        this.subCommand = (byte) 104;
        this.name = "\\PIPE\\LANMAN";
        this.maxParameterCount = 8;
        this.maxDataCount = 16384;
        this.maxSetupCount = (byte) 0;
        this.setupCount = 0;
        this.timeout = 5000;
    }

    @Override // jcifs.smb.SmbComTransaction
    int readDataWireFormat(byte[] bArr, int i, int i2) {
        return 0;
    }

    @Override // jcifs.smb.SmbComTransaction
    int readParametersWireFormat(byte[] bArr, int i, int i2) {
        return 0;
    }

    @Override // jcifs.smb.SmbComTransaction
    int readSetupWireFormat(byte[] bArr, int i, int i2) {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.SmbComTransaction
    public void reset(int i, String str) {
        super.reset();
        this.lastName = str;
    }

    @Override // jcifs.smb.SmbComTransaction, jcifs.smb.ServerMessageBlock
    public String toString() {
        return new String("NetServerEnum2[" + super.toString() + ",name=" + this.name + ",serverTypes=" + (this.serverTypes == -1 ? "SV_TYPE_ALL" : "SV_TYPE_DOMAIN_ENUM") + "]");
    }

    @Override // jcifs.smb.SmbComTransaction
    int writeDataWireFormat(byte[] bArr, int i) {
        return 0;
    }

    @Override // jcifs.smb.SmbComTransaction
    int writeParametersWireFormat(byte[] bArr, int i) {
        char c = this.subCommand == 104 ? (char) 0 : (char) 1;
        try {
            byte[] bytes = DESCR[c].getBytes("ASCII");
            writeInt2(this.subCommand & 255, bArr, i);
            int i2 = i + 2;
            System.arraycopy(bytes, 0, bArr, i2, bytes.length);
            int length = bytes.length + i2;
            writeInt2(1L, bArr, length);
            int i3 = length + 2;
            writeInt2(this.maxDataCount, bArr, i3);
            int i4 = i3 + 2;
            writeInt4(this.serverTypes, bArr, i4);
            int i5 = i4 + 4;
            int writeString = i5 + writeString(this.domain.toUpperCase(), bArr, i5, false);
            return (c == 1 ? writeString(this.lastName.toUpperCase(), bArr, writeString, false) + writeString : writeString) - i;
        } catch (UnsupportedEncodingException e) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.SmbComTransaction
    public int writeSetupWireFormat(byte[] bArr, int i) {
        return 0;
    }
}
