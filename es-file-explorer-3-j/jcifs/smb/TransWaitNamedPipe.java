package jcifs.smb;

/* loaded from: classes.dex */
class TransWaitNamedPipe extends SmbComTransaction {
    /* JADX INFO: Access modifiers changed from: package-private */
    public TransWaitNamedPipe(String str) {
        this.name = str;
        this.command = (byte) 37;
        this.subCommand = (byte) 83;
        this.timeout = -1;
        this.maxParameterCount = 0;
        this.maxDataCount = 0;
        this.maxSetupCount = (byte) 0;
        this.setupCount = 2;
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
        return new String("TransWaitNamedPipe[" + super.toString() + ",pipeName=" + this.name + "]");
    }

    @Override // jcifs.smb.SmbComTransaction
    int writeDataWireFormat(byte[] bArr, int i) {
        return 0;
    }

    @Override // jcifs.smb.SmbComTransaction
    int writeParametersWireFormat(byte[] bArr, int i) {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.SmbComTransaction
    public int writeSetupWireFormat(byte[] bArr, int i) {
        int i2 = i + 1;
        bArr[i] = this.subCommand;
        int i3 = i2 + 1;
        bArr[i2] = 0;
        int i4 = i3 + 1;
        bArr[i3] = 0;
        int i5 = i4 + 1;
        bArr[i4] = 0;
        return 4;
    }
}
