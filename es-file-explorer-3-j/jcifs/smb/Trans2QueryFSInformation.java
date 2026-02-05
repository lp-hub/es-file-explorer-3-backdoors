package jcifs.smb;

import jcifs.util.Hexdump;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Trans2QueryFSInformation extends SmbComTransaction {
    private int informationLevel;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Trans2QueryFSInformation(int i) {
        this.command = (byte) 50;
        this.subCommand = (byte) 3;
        this.informationLevel = i;
        this.totalParameterCount = 2;
        this.totalDataCount = 0;
        this.maxParameterCount = 0;
        this.maxDataCount = 800;
        this.maxSetupCount = (byte) 0;
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

    @Override // jcifs.smb.SmbComTransaction, jcifs.smb.ServerMessageBlock
    public String toString() {
        return new String("Trans2QueryFSInformation[" + super.toString() + ",informationLevel=0x" + Hexdump.toHexString(this.informationLevel, 3) + "]");
    }

    @Override // jcifs.smb.SmbComTransaction
    int writeDataWireFormat(byte[] bArr, int i) {
        return 0;
    }

    @Override // jcifs.smb.SmbComTransaction
    int writeParametersWireFormat(byte[] bArr, int i) {
        writeInt2(this.informationLevel, bArr, i);
        return (i + 2) - i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.SmbComTransaction
    public int writeSetupWireFormat(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = this.subCommand;
        int i3 = i2 + 1;
        bArr[i2] = 0;
        return 2;
    }
}
