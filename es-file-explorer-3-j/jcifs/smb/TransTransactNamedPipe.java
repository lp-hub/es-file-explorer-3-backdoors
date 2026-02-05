package jcifs.smb;

import jcifs.util.LogStream;

/* loaded from: classes.dex */
class TransTransactNamedPipe extends SmbComTransaction {
    private byte[] pipeData;
    private int pipeDataLen;
    private int pipeDataOff;
    private int pipeFid;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransTransactNamedPipe(int i, byte[] bArr, int i2, int i3) {
        this.pipeFid = i;
        this.pipeData = bArr;
        this.pipeDataOff = i2;
        this.pipeDataLen = i3;
        this.command = (byte) 37;
        this.subCommand = (byte) 38;
        this.maxParameterCount = 0;
        this.maxDataCount = 65535;
        this.maxSetupCount = (byte) 0;
        this.setupCount = 2;
        this.name = "\\PIPE\\";
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
        return new String("TransTransactNamedPipe[" + super.toString() + ",pipeFid=" + this.pipeFid + "]");
    }

    @Override // jcifs.smb.SmbComTransaction
    int writeDataWireFormat(byte[] bArr, int i) {
        if (bArr.length - i >= this.pipeDataLen) {
            System.arraycopy(this.pipeData, this.pipeDataOff, bArr, i, this.pipeDataLen);
            return this.pipeDataLen;
        }
        LogStream logStream = log;
        if (LogStream.level >= 3) {
            log.println("TransTransactNamedPipe data too long for buffer");
        }
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
        writeInt2(this.pipeFid, bArr, i3);
        int i4 = i3 + 2;
        return 4;
    }
}
