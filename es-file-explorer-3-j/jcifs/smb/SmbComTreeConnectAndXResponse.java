package jcifs.smb;

import java.io.UnsupportedEncodingException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SmbComTreeConnectAndXResponse extends AndXServerMessageBlock {
    private static final int SMB_SHARE_IS_IN_DFS = 2;
    private static final int SMB_SUPPORT_SEARCH_BITS = 1;
    String nativeFileSystem;
    String service;
    boolean shareIsInDfs;
    boolean supportSearchBits;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SmbComTreeConnectAndXResponse(ServerMessageBlock serverMessageBlock) {
        super(serverMessageBlock);
        this.nativeFileSystem = "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int readBytesWireFormat(byte[] bArr, int i) {
        int readStringLength = readStringLength(bArr, i, 32);
        try {
            this.service = new String(bArr, i, readStringLength, "ASCII");
            return ((readStringLength + 1) + i) - i;
        } catch (UnsupportedEncodingException e) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int readParameterWordsWireFormat(byte[] bArr, int i) {
        this.supportSearchBits = (bArr[i] & 1) == 1;
        this.shareIsInDfs = (bArr[i] & 2) == 2;
        return 2;
    }

    @Override // jcifs.smb.AndXServerMessageBlock, jcifs.smb.ServerMessageBlock
    public String toString() {
        return new String("SmbComTreeConnectAndXResponse[" + super.toString() + ",supportSearchBits=" + this.supportSearchBits + ",shareIsInDfs=" + this.shareIsInDfs + ",service=" + this.service + ",nativeFileSystem=" + this.nativeFileSystem + "]");
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
