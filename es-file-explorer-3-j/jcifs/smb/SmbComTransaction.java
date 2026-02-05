package jcifs.smb;

import java.util.Enumeration;
import jcifs.Config;
import jcifs.util.Hexdump;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class SmbComTransaction extends ServerMessageBlock implements Enumeration {
    private static final int DISCONNECT_TID = 1;
    static final int NET_SERVER_ENUM2 = 104;
    static final int NET_SERVER_ENUM3 = 215;
    static final int NET_SHARE_ENUM = 0;
    private static final int ONE_WAY_TRANSACTION = 2;
    private static final int PADDING_SIZE = 2;
    private static final int PRIMARY_SETUP_OFFSET = 61;
    private static final int SECONDARY_PARAMETER_OFFSET = 51;
    static final byte TRANS2_FIND_FIRST2 = 1;
    static final byte TRANS2_FIND_NEXT2 = 2;
    static final byte TRANS2_GET_DFS_REFERRAL = 16;
    static final byte TRANS2_QUERY_FS_INFORMATION = 3;
    static final byte TRANS2_QUERY_PATH_INFORMATION = 5;
    static final byte TRANS2_SET_FILE_INFORMATION = 8;
    static final byte TRANS_CALL_NAMED_PIPE = 84;
    static final byte TRANS_PEEK_NAMED_PIPE = 35;
    static final byte TRANS_TRANSACT_NAMED_PIPE = 38;
    static final byte TRANS_WAIT_NAMED_PIPE = 83;
    private int bufDataOffset;
    private int bufParameterOffset;
    protected int dataCount;
    protected int dataDisplacement;
    protected int dataOffset;
    private int fid;
    int maxBufferSize;
    byte maxSetupCount;
    protected int parameterCount;
    protected int parameterDisplacement;
    protected int parameterOffset;
    byte subCommand;
    int totalDataCount;
    int totalParameterCount;
    byte[] txn_buf;
    static final int TRANSACTION_BUF_SIZE = 65535;
    private static final int DEFAULT_MAX_DATA_COUNT = Config.getInt("jcifs.smb.client.transaction_buf_size", TRANSACTION_BUF_SIZE) - 512;
    private int flags = 0;
    private int pad = 0;
    private int pad1 = 0;
    private boolean hasMore = true;
    private boolean isPrimary = true;
    int maxDataCount = DEFAULT_MAX_DATA_COUNT;
    int timeout = 0;
    int setupCount = 1;
    String name = "";
    int maxParameterCount = 1024;
    protected int primarySetupOffset = PRIMARY_SETUP_OFFSET;
    protected int secondaryParameterOffset = SECONDARY_PARAMETER_OFFSET;

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        return this.hasMore;
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        if (this.isPrimary) {
            this.isPrimary = false;
            this.parameterOffset = this.primarySetupOffset + (this.setupCount * 2) + 2;
            if (this.command != -96) {
                if (this.command == 37 && !isResponse()) {
                    this.parameterOffset += stringWireLength(this.name, this.parameterOffset);
                }
            } else if (this.command == -96) {
                this.parameterOffset += 2;
            }
            this.pad = this.parameterOffset % 2;
            this.pad = this.pad == 0 ? 0 : 2 - this.pad;
            this.parameterOffset += this.pad;
            this.totalParameterCount = writeParametersWireFormat(this.txn_buf, this.bufParameterOffset);
            this.bufDataOffset = this.totalParameterCount;
            int i = this.maxBufferSize - this.parameterOffset;
            this.parameterCount = Math.min(this.totalParameterCount, i);
            int i2 = i - this.parameterCount;
            this.dataOffset = this.parameterOffset + this.parameterCount;
            this.pad1 = this.dataOffset % 2;
            this.pad1 = this.pad1 == 0 ? 0 : 2 - this.pad1;
            this.dataOffset += this.pad1;
            this.totalDataCount = writeDataWireFormat(this.txn_buf, this.bufDataOffset);
            this.dataCount = Math.min(this.totalDataCount, i2);
        } else {
            if (this.command != -96) {
                this.command = TRANS_TRANSACT_NAMED_PIPE;
            } else {
                this.command = (byte) -95;
            }
            this.parameterOffset = SECONDARY_PARAMETER_OFFSET;
            if (this.totalParameterCount - this.parameterDisplacement > 0) {
                this.pad = this.parameterOffset % 2;
                this.pad = this.pad == 0 ? 0 : 2 - this.pad;
                this.parameterOffset += this.pad;
            }
            this.parameterDisplacement += this.parameterCount;
            int i3 = (this.maxBufferSize - this.parameterOffset) - this.pad;
            this.parameterCount = Math.min(this.totalParameterCount - this.parameterDisplacement, i3);
            int i4 = i3 - this.parameterCount;
            this.dataOffset = this.parameterOffset + this.parameterCount;
            this.pad1 = this.dataOffset % 2;
            this.pad1 = this.pad1 == 0 ? 0 : 2 - this.pad1;
            this.dataOffset += this.pad1;
            this.dataDisplacement += this.dataCount;
            this.dataCount = Math.min(this.totalDataCount - this.dataDisplacement, i4 - this.pad1);
        }
        if (this.parameterDisplacement + this.parameterCount >= this.totalParameterCount && this.dataDisplacement + this.dataCount >= this.totalDataCount) {
            this.hasMore = false;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int readBytesWireFormat(byte[] bArr, int i) {
        return 0;
    }

    abstract int readDataWireFormat(byte[] bArr, int i, int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int readParameterWordsWireFormat(byte[] bArr, int i) {
        return 0;
    }

    abstract int readParametersWireFormat(byte[] bArr, int i, int i2);

    abstract int readSetupWireFormat(byte[] bArr, int i, int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public void reset() {
        super.reset();
        this.hasMore = true;
        this.isPrimary = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reset(int i, String str) {
        reset();
    }

    @Override // jcifs.smb.ServerMessageBlock
    public String toString() {
        return new String(super.toString() + ",totalParameterCount=" + this.totalParameterCount + ",totalDataCount=" + this.totalDataCount + ",maxParameterCount=" + this.maxParameterCount + ",maxDataCount=" + this.maxDataCount + ",maxSetupCount=" + ((int) this.maxSetupCount) + ",flags=0x" + Hexdump.toHexString(this.flags, 2) + ",timeout=" + this.timeout + ",parameterCount=" + this.parameterCount + ",parameterOffset=" + this.parameterOffset + ",parameterDisplacement=" + this.parameterDisplacement + ",dataCount=" + this.dataCount + ",dataOffset=" + this.dataOffset + ",dataDisplacement=" + this.dataDisplacement + ",setupCount=" + this.setupCount + ",pad=" + this.pad + ",pad1=" + this.pad1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int writeBytesWireFormat(byte[] bArr, int i) {
        int i2;
        int i3;
        int i4 = this.pad;
        int writeString = (this.command != 37 || isResponse()) ? i : writeString(this.name, bArr, i) + i;
        if (this.parameterCount > 0) {
            while (true) {
                i2 = writeString;
                int i5 = i4;
                i4 = i5 - 1;
                if (i5 <= 0) {
                    break;
                }
                writeString = i2 + 1;
                bArr[i2] = 0;
            }
            System.arraycopy(this.txn_buf, this.bufParameterOffset, bArr, i2, this.parameterCount);
            writeString = this.parameterCount + i2;
        }
        if (this.dataCount > 0) {
            int i6 = this.pad1;
            while (true) {
                i3 = writeString;
                int i7 = i6;
                i6 = i7 - 1;
                if (i7 <= 0) {
                    break;
                }
                writeString = i3 + 1;
                bArr[i3] = 0;
            }
            System.arraycopy(this.txn_buf, this.bufDataOffset, bArr, i3, this.dataCount);
            this.bufDataOffset += this.dataCount;
            writeString = this.dataCount + i3;
        }
        return writeString - i;
    }

    abstract int writeDataWireFormat(byte[] bArr, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int writeParameterWordsWireFormat(byte[] bArr, int i) {
        int writeSetupWireFormat;
        writeInt2(this.totalParameterCount, bArr, i);
        int i2 = i + 2;
        writeInt2(this.totalDataCount, bArr, i2);
        int i3 = i2 + 2;
        if (this.command != 38) {
            writeInt2(this.maxParameterCount, bArr, i3);
            int i4 = i3 + 2;
            writeInt2(this.maxDataCount, bArr, i4);
            int i5 = i4 + 2;
            int i6 = i5 + 1;
            bArr[i5] = this.maxSetupCount;
            int i7 = i6 + 1;
            bArr[i6] = 0;
            writeInt2(this.flags, bArr, i7);
            int i8 = i7 + 2;
            writeInt4(this.timeout, bArr, i8);
            int i9 = i8 + 4;
            int i10 = i9 + 1;
            bArr[i9] = 0;
            i3 = i10 + 1;
            bArr[i10] = 0;
        }
        writeInt2(this.parameterCount, bArr, i3);
        int i11 = i3 + 2;
        writeInt2(this.parameterOffset, bArr, i11);
        int i12 = i11 + 2;
        if (this.command == 38) {
            writeInt2(this.parameterDisplacement, bArr, i12);
            i12 += 2;
        }
        writeInt2(this.dataCount, bArr, i12);
        int i13 = i12 + 2;
        writeInt2(this.dataCount == 0 ? 0 : this.dataOffset, bArr, i13);
        int i14 = i13 + 2;
        if (this.command == 38) {
            writeInt2(this.dataDisplacement, bArr, i14);
            writeSetupWireFormat = i14 + 2;
        } else {
            int i15 = i14 + 1;
            bArr[i14] = (byte) this.setupCount;
            int i16 = i15 + 1;
            bArr[i15] = 0;
            writeSetupWireFormat = i16 + writeSetupWireFormat(bArr, i16);
        }
        return writeSetupWireFormat - i;
    }

    abstract int writeParametersWireFormat(byte[] bArr, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int writeSetupWireFormat(byte[] bArr, int i);
}
