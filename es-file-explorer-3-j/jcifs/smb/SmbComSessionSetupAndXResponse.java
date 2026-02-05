package jcifs.smb;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SmbComSessionSetupAndXResponse extends AndXServerMessageBlock {
    byte[] blob;
    boolean isLoggedInAsGuest;
    private String nativeLanMan;
    private String nativeOs;
    private String primaryDomain;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SmbComSessionSetupAndXResponse(ServerMessageBlock serverMessageBlock) {
        super(serverMessageBlock);
        this.nativeOs = "";
        this.nativeLanMan = "";
        this.primaryDomain = "";
        this.blob = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int readBytesWireFormat(byte[] bArr, int i) {
        int i2;
        if (this.extendedSecurity) {
            System.arraycopy(bArr, i, this.blob, 0, this.blob.length);
            i2 = this.blob.length + i;
        } else {
            i2 = i;
        }
        this.nativeOs = readString(bArr, i2);
        int stringWireLength = i2 + stringWireLength(this.nativeOs, i2);
        this.nativeLanMan = readString(bArr, stringWireLength, i + this.byteCount, 255, this.useUnicode);
        int stringWireLength2 = stringWireLength + stringWireLength(this.nativeLanMan, stringWireLength);
        if (!this.extendedSecurity) {
            this.primaryDomain = readString(bArr, stringWireLength2, i + this.byteCount, 255, this.useUnicode);
            stringWireLength2 += stringWireLength(this.primaryDomain, stringWireLength2);
        }
        return stringWireLength2 - i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int readParameterWordsWireFormat(byte[] bArr, int i) {
        this.isLoggedInAsGuest = (bArr[i] & 1) == 1;
        int i2 = i + 2;
        if (this.extendedSecurity) {
            int readInt2 = readInt2(bArr, i2);
            i2 += 2;
            this.blob = new byte[readInt2];
        }
        return i2 - i;
    }

    @Override // jcifs.smb.AndXServerMessageBlock, jcifs.smb.ServerMessageBlock
    public String toString() {
        return new String("SmbComSessionSetupAndXResponse[" + super.toString() + ",isLoggedInAsGuest=" + this.isLoggedInAsGuest + ",nativeOs=" + this.nativeOs + ",nativeLanMan=" + this.nativeLanMan + ",primaryDomain=" + this.primaryDomain + "]");
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
