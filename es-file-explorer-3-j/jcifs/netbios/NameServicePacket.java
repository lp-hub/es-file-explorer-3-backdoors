package jcifs.netbios;

import java.net.InetAddress;
import jcifs.util.Hexdump;
import org.apache.commons.net.ftp.FTPReply;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class NameServicePacket {
    static final int A = 1;
    static final int ACT_ERR = 6;
    static final int ADDITIONAL_OFFSET = 10;
    static final int ANSWER_OFFSET = 6;
    static final int AUTHORITY_OFFSET = 8;
    static final int CFT_ERR = 7;
    static final int FMT_ERR = 1;
    static final int HEADER_LENGTH = 12;
    static final int IMP_ERR = 4;
    static final int IN = 1;
    static final int NB = 32;
    static final int NBSTAT = 33;
    static final int NBSTAT_IN = 2162689;
    static final int NB_IN = 2097153;
    static final int NS = 2;
    static final int NULL = 10;
    static final int OPCODE_OFFSET = 2;
    static final int QUERY = 0;
    static final int QUESTION_OFFSET = 4;
    static final int RFS_ERR = 5;
    static final int SRV_ERR = 2;
    static final int WACK = 7;
    int additionalCount;
    InetAddress addr;
    NbtAddress[] addrEntry;
    int addrIndex;
    int answerCount;
    int authorityCount;
    boolean isAuthAnswer;
    boolean isRecurAvailable;
    boolean isResponse;
    boolean isTruncated;
    int nameTrnId;
    int opCode;
    Name questionName;
    int questionType;
    int rDataLength;
    boolean received;
    int recordClass;
    Name recordName;
    int recordType;
    int resultCode;
    int ttl;
    boolean isRecurDesired = true;
    boolean isBroadcast = true;
    int questionCount = 1;
    int questionClass = 1;

    static int readInt2(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 8) + (bArr[i + 1] & 255);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int readInt4(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int readNameTrnId(byte[] bArr, int i) {
        return readInt2(bArr, i);
    }

    static void writeInt2(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) ((i >> 8) & 255);
        bArr[i2 + 1] = (byte) (i & 255);
    }

    static void writeInt4(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >> 16) & 255);
        bArr[i4] = (byte) ((i >> 8) & 255);
        bArr[i4 + 1] = (byte) (i & 255);
    }

    abstract int readBodyWireFormat(byte[] bArr, int i);

    int readHeaderWireFormat(byte[] bArr, int i) {
        this.nameTrnId = readInt2(bArr, i);
        this.isResponse = (bArr[i + 2] & 128) != 0;
        this.opCode = (bArr[i + 2] & 120) >> 3;
        this.isAuthAnswer = (bArr[i + 2] & 4) != 0;
        this.isTruncated = (bArr[i + 2] & 2) != 0;
        this.isRecurDesired = (bArr[i + 2] & 1) != 0;
        this.isRecurAvailable = (bArr[(i + 2) + 1] & 128) != 0;
        this.isBroadcast = (bArr[(i + 2) + 1] & 16) != 0;
        this.resultCode = bArr[i + 2 + 1] & 15;
        this.questionCount = readInt2(bArr, i + 4);
        this.answerCount = readInt2(bArr, i + 6);
        this.authorityCount = readInt2(bArr, i + 8);
        this.additionalCount = readInt2(bArr, i + 10);
        return 12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int readQuestionSectionWireFormat(byte[] bArr, int i) {
        int readWireFormat = this.questionName.readWireFormat(bArr, i) + i;
        this.questionType = readInt2(bArr, readWireFormat);
        int i2 = readWireFormat + 2;
        this.questionClass = readInt2(bArr, i2);
        return (i2 + 2) - i;
    }

    abstract int readRDataWireFormat(byte[] bArr, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public int readResourceRecordWireFormat(byte[] bArr, int i) {
        int readWireFormat;
        if ((bArr[i] & 192) == 192) {
            this.recordName = this.questionName;
            readWireFormat = i + 2;
        } else {
            readWireFormat = this.recordName.readWireFormat(bArr, i) + i;
        }
        this.recordType = readInt2(bArr, readWireFormat);
        int i2 = readWireFormat + 2;
        this.recordClass = readInt2(bArr, i2);
        int i3 = i2 + 2;
        this.ttl = readInt4(bArr, i3);
        int i4 = i3 + 4;
        this.rDataLength = readInt2(bArr, i4);
        int i5 = i4 + 2;
        this.addrEntry = new NbtAddress[this.rDataLength / 6];
        int i6 = this.rDataLength + i5;
        this.addrIndex = 0;
        while (i5 < i6) {
            i5 += readRDataWireFormat(bArr, i5);
            this.addrIndex++;
        }
        return i5 - i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int readWireFormat(byte[] bArr, int i) {
        int readHeaderWireFormat = readHeaderWireFormat(bArr, i) + i;
        return (readHeaderWireFormat + readBodyWireFormat(bArr, readHeaderWireFormat)) - i;
    }

    public String toString() {
        String str;
        String str2;
        String str3;
        switch (this.opCode) {
            case 0:
                str = "QUERY";
                break;
            case 7:
                str = "WACK";
                break;
            default:
                str = Integer.toString(this.opCode);
                break;
        }
        switch (this.resultCode) {
            case 1:
                break;
            case 2:
                break;
            case 3:
            default:
                String str4 = "0x" + Hexdump.toHexString(this.resultCode, 1);
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            case 7:
                break;
        }
        switch (this.questionType) {
            case 32:
                str2 = "NB";
                break;
            case 33:
                str2 = "NBSTAT";
                break;
            default:
                str2 = "0x" + Hexdump.toHexString(this.questionType, 4);
                break;
        }
        switch (this.recordType) {
            case 1:
                str3 = "A";
                break;
            case 2:
                str3 = "NS";
                break;
            case 10:
                str3 = "NULL";
                break;
            case 32:
                str3 = "NB";
                break;
            case 33:
                str3 = "NBSTAT";
                break;
            default:
                str3 = "0x" + Hexdump.toHexString(this.recordType, 4);
                break;
        }
        return new String("nameTrnId=" + this.nameTrnId + ",isResponse=" + this.isResponse + ",opCode=" + str + ",isAuthAnswer=" + this.isAuthAnswer + ",isTruncated=" + this.isTruncated + ",isRecurAvailable=" + this.isRecurAvailable + ",isRecurDesired=" + this.isRecurDesired + ",isBroadcast=" + this.isBroadcast + ",resultCode=" + this.resultCode + ",questionCount=" + this.questionCount + ",answerCount=" + this.answerCount + ",authorityCount=" + this.authorityCount + ",additionalCount=" + this.additionalCount + ",questionName=" + this.questionName + ",questionType=" + str2 + ",questionClass=" + (this.questionClass == 1 ? "IN" : "0x" + Hexdump.toHexString(this.questionClass, 4)) + ",recordName=" + this.recordName + ",recordType=" + str3 + ",recordClass=" + (this.recordClass == 1 ? "IN" : "0x" + Hexdump.toHexString(this.recordClass, 4)) + ",ttl=" + this.ttl + ",rDataLength=" + this.rDataLength);
    }

    abstract int writeBodyWireFormat(byte[] bArr, int i);

    int writeHeaderWireFormat(byte[] bArr, int i) {
        writeInt2(this.nameTrnId, bArr, i);
        bArr[i + 2] = (byte) ((this.isRecurDesired ? 1 : 0) + ((this.opCode << 3) & FTPReply.SERVICE_NOT_READY) + (this.isResponse ? 128 : 0) + (this.isAuthAnswer ? 4 : 0) + (this.isTruncated ? 2 : 0));
        bArr[i + 2 + 1] = (byte) ((this.isRecurAvailable ? 128 : 0) + (this.isBroadcast ? 16 : 0) + (this.resultCode & 15));
        writeInt2(this.questionCount, bArr, i + 4);
        writeInt2(this.answerCount, bArr, i + 6);
        writeInt2(this.authorityCount, bArr, i + 8);
        writeInt2(this.additionalCount, bArr, i + 10);
        return 12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int writeQuestionSectionWireFormat(byte[] bArr, int i) {
        int writeWireFormat = this.questionName.writeWireFormat(bArr, i) + i;
        writeInt2(this.questionType, bArr, writeWireFormat);
        int i2 = writeWireFormat + 2;
        writeInt2(this.questionClass, bArr, i2);
        return (i2 + 2) - i;
    }

    abstract int writeRDataWireFormat(byte[] bArr, int i);

    int writeResourceRecordWireFormat(byte[] bArr, int i) {
        int writeWireFormat;
        if (this.recordName == this.questionName) {
            int i2 = i + 1;
            bArr[i] = -64;
            writeWireFormat = i2 + 1;
            bArr[i2] = 12;
        } else {
            writeWireFormat = this.recordName.writeWireFormat(bArr, i) + i;
        }
        writeInt2(this.recordType, bArr, writeWireFormat);
        int i3 = writeWireFormat + 2;
        writeInt2(this.recordClass, bArr, i3);
        int i4 = i3 + 2;
        writeInt4(this.ttl, bArr, i4);
        int i5 = i4 + 4;
        this.rDataLength = writeRDataWireFormat(bArr, i5 + 2);
        writeInt2(this.rDataLength, bArr, i5);
        return (i5 + (this.rDataLength + 2)) - i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int writeWireFormat(byte[] bArr, int i) {
        int writeHeaderWireFormat = writeHeaderWireFormat(bArr, i) + i;
        return (writeHeaderWireFormat + writeBodyWireFormat(bArr, writeHeaderWireFormat)) - i;
    }
}
