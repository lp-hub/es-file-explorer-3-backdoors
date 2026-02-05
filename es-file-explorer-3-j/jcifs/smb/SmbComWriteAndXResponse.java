package jcifs.smb;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SmbComWriteAndXResponse extends AndXServerMessageBlock {
    long count;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int readBytesWireFormat(byte[] bArr, int i) {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int readParameterWordsWireFormat(byte[] bArr, int i) {
        this.count = readInt2(bArr, i) & 65535;
        return 8;
    }

    @Override // jcifs.smb.AndXServerMessageBlock, jcifs.smb.ServerMessageBlock
    public String toString() {
        return new String("SmbComWriteAndXResponse[" + super.toString() + ",count=" + this.count + "]");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int writeBytesWireFormat(byte[] bArr, int i) {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int writeParameterWordsWireFormat(byte[] bArr, int i) {
        return 0;
    }
}
