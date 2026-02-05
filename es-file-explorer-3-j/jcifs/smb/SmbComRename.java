package jcifs.smb;

import jcifs.util.Hexdump;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SmbComRename extends ServerMessageBlock {
    private String newFileName;
    private String oldFileName;
    private int searchAttributes;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SmbComRename(String str, String str2) {
        this.command = (byte) 7;
        this.oldFileName = str;
        this.newFileName = str2;
        this.searchAttributes = 22;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int readBytesWireFormat(byte[] bArr, int i) {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int readParameterWordsWireFormat(byte[] bArr, int i) {
        return 0;
    }

    @Override // jcifs.smb.ServerMessageBlock
    public String toString() {
        return new String("SmbComRename[" + super.toString() + ",searchAttributes=0x" + Hexdump.toHexString(this.searchAttributes, 4) + ",oldFileName=" + this.oldFileName + ",newFileName=" + this.newFileName + "]");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int writeBytesWireFormat(byte[] bArr, int i) {
        int i2;
        int i3 = i + 1;
        bArr[i] = 4;
        int writeString = i3 + writeString(this.oldFileName, bArr, i3);
        int i4 = writeString + 1;
        bArr[writeString] = 4;
        if (this.useUnicode) {
            i2 = i4 + 1;
            bArr[i4] = 0;
        } else {
            i2 = i4;
        }
        return (i2 + writeString(this.newFileName, bArr, i2)) - i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int writeParameterWordsWireFormat(byte[] bArr, int i) {
        writeInt2(this.searchAttributes, bArr, i);
        return 2;
    }
}
