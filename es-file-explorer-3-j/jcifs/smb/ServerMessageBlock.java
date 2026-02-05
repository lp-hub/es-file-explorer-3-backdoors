package jcifs.smb;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import jcifs.util.Hexdump;
import jcifs.util.LogStream;
import jcifs.util.transport.Request;
import jcifs.util.transport.Response;
import org.apache.commons.net.ftp.FTPCommand;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class ServerMessageBlock extends Response implements SmbConstants, Request {
    static final byte SMB_COM_CHECK_DIRECTORY = 16;
    static final byte SMB_COM_CLOSE = 4;
    static final byte SMB_COM_DELETE = 6;
    static final byte SMB_COM_DELETE_DIRECTORY = 1;
    static final byte SMB_COM_ECHO = 43;
    static final byte SMB_COM_FIND_CLOSE2 = 52;
    static final byte SMB_COM_LOGOFF_ANDX = 116;
    static final byte SMB_COM_MOVE = 42;
    static final byte SMB_COM_NEGOTIATE = 114;
    static final byte SMB_COM_NT_CREATE_ANDX = -94;
    static final byte SMB_COM_NT_TRANSACT = -96;
    static final byte SMB_COM_NT_TRANSACT_SECONDARY = -95;
    static final byte SMB_COM_OPEN_ANDX = 45;
    static final byte SMB_COM_QUERY_INFORMATION = 8;
    static final byte SMB_COM_READ_ANDX = 46;
    static final byte SMB_COM_RENAME = 7;
    static final byte SMB_COM_SESSION_SETUP_ANDX = 115;
    static final byte SMB_COM_TRANSACTION = 37;
    static final byte SMB_COM_TRANSACTION2 = 50;
    static final byte SMB_COM_TRANSACTION_SECONDARY = 38;
    static final byte SMB_COM_TREE_CONNECT_ANDX = 117;
    static final byte SMB_COM_TREE_DISCONNECT = 113;
    static final byte SMB_COM_WRITE = 11;
    static final byte SMB_COM_WRITE_ANDX = 47;
    int byteCount;
    byte command;
    int errorCode;
    boolean extendedSecurity;
    int flags2;
    int headerStart;
    int length;
    int mid;
    String path;
    boolean received;
    ServerMessageBlock response;
    int signSeq;
    int tid;
    int uid;
    boolean useUnicode;
    boolean verifyFailed;
    int wordCount;
    static LogStream log = LogStream.getInstance();
    static final byte SMB_COM_CREATE_DIRECTORY = 0;
    static final byte[] header = {-1, 83, 77, 66, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY, SMB_COM_CREATE_DIRECTORY};
    long responseTimeout = 1;
    NtlmPasswordAuthentication auth = null;
    SigningDigest digest = null;
    byte flags = 24;
    int pid = PID;
    int batchLevel = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int readInt2(byte[] bArr, int i) {
        return (bArr[i] & 255) + ((bArr[i + 1] & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int readInt4(byte[] bArr, int i) {
        return (bArr[i] & 255) + ((bArr[i + 1] & 255) << 8) + ((bArr[i + 2] & 255) << 16) + ((bArr[i + 3] & 255) << 24);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long readInt8(byte[] bArr, int i) {
        return (readInt4(bArr, i) & 4294967295L) + (readInt4(bArr, i + 4) << 32);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long readTime(byte[] bArr, int i) {
        return (((readInt4(bArr, i + 4) << 32) | (readInt4(bArr, i) & 4294967295L)) / 10000) - 11644473600000L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long readUTime(byte[] bArr, int i) {
        return readInt4(bArr, i) * 1000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeInt2(long j, byte[] bArr, int i) {
        bArr[i] = (byte) j;
        bArr[i + 1] = (byte) (j >> 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeInt4(long j, byte[] bArr, int i) {
        bArr[i] = (byte) j;
        int i2 = i + 1;
        long j2 = j >> 8;
        bArr[i2] = (byte) j2;
        int i3 = i2 + 1;
        bArr[i3] = (byte) (j2 >> 8);
        bArr[i3 + 1] = (byte) (r1 >> 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeInt8(long j, byte[] bArr, int i) {
        bArr[i] = (byte) j;
        int i2 = i + 1;
        long j2 = j >> 8;
        bArr[i2] = (byte) j2;
        int i3 = i2 + 1;
        long j3 = j2 >> 8;
        bArr[i3] = (byte) j3;
        int i4 = i3 + 1;
        long j4 = j3 >> 8;
        bArr[i4] = (byte) j4;
        int i5 = i4 + 1;
        long j5 = j4 >> 8;
        bArr[i5] = (byte) j5;
        int i6 = i5 + 1;
        long j6 = j5 >> 8;
        bArr[i6] = (byte) j6;
        int i7 = i6 + 1;
        bArr[i7] = (byte) (j6 >> 8);
        bArr[i7 + 1] = (byte) (r1 >> 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeTime(long j, byte[] bArr, int i) {
        if (j != 0) {
            j = (11644473600000L + j) * 10000;
        }
        writeInt8(j, bArr, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeUTime(long j, byte[] bArr, int i) {
        if (j == 0 || j == -1) {
            writeInt4(-1L, bArr, i);
            return;
        }
        synchronized (TZ) {
            if (TZ.inDaylightTime(new Date())) {
                if (!TZ.inDaylightTime(new Date(j))) {
                    j -= 3600000;
                }
            } else if (TZ.inDaylightTime(new Date(j))) {
                j += 3600000;
            }
        }
        writeInt4((int) (j / 1000), bArr, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int decode(byte[] bArr, int i) {
        this.headerStart = i;
        int readHeaderWireFormat = i + readHeaderWireFormat(bArr, i);
        int i2 = readHeaderWireFormat + 1;
        this.wordCount = bArr[readHeaderWireFormat];
        if (this.wordCount != 0) {
            int readParameterWordsWireFormat = readParameterWordsWireFormat(bArr, i2);
            if (readParameterWordsWireFormat != this.wordCount * 2) {
                LogStream logStream = log;
                if (LogStream.level >= 5) {
                    log.println("wordCount * 2=" + (this.wordCount * 2) + " but readParameterWordsWireFormat returned " + readParameterWordsWireFormat);
                }
            }
            i2 += this.wordCount * 2;
        }
        this.byteCount = readInt2(bArr, i2);
        int i3 = i2 + 2;
        if (this.byteCount != 0) {
            int readBytesWireFormat = readBytesWireFormat(bArr, i3);
            if (readBytesWireFormat != this.byteCount) {
                LogStream logStream2 = log;
                if (LogStream.level >= 5) {
                    log.println("byteCount=" + this.byteCount + " but readBytesWireFormat returned " + readBytesWireFormat);
                }
            }
            i3 += this.byteCount;
        }
        this.length = i3 - i;
        return this.length;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int encode(byte[] bArr, int i) {
        this.headerStart = i;
        int writeHeaderWireFormat = writeHeaderWireFormat(bArr, i) + i;
        this.wordCount = writeParameterWordsWireFormat(bArr, writeHeaderWireFormat + 1);
        bArr[writeHeaderWireFormat] = (byte) ((this.wordCount / 2) & 255);
        int i2 = this.wordCount + writeHeaderWireFormat + 1;
        this.wordCount /= 2;
        this.byteCount = writeBytesWireFormat(bArr, i2 + 2);
        int i3 = i2 + 1;
        bArr[i2] = (byte) (this.byteCount & 255);
        bArr[i3] = (byte) ((this.byteCount >> 8) & 255);
        this.length = ((i3 + 1) + this.byteCount) - i;
        if (this.digest != null) {
            this.digest.sign(bArr, this.headerStart, this.length, this, this.response);
        }
        return this.length;
    }

    public boolean equals(Object obj) {
        return (obj instanceof ServerMessageBlock) && ((ServerMessageBlock) obj).mid == this.mid;
    }

    public int hashCode() {
        return this.mid;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isResponse() {
        return (this.flags & 128) == 128;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int readBytesWireFormat(byte[] bArr, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public int readHeaderWireFormat(byte[] bArr, int i) {
        this.command = bArr[i + 4];
        this.errorCode = readInt4(bArr, i + 5);
        this.flags = bArr[i + 9];
        this.flags2 = readInt2(bArr, i + 9 + 1);
        this.tid = readInt2(bArr, i + 24);
        this.pid = readInt2(bArr, i + 24 + 2);
        this.uid = readInt2(bArr, i + 24 + 4);
        this.mid = readInt2(bArr, i + 24 + 6);
        return 32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int readParameterWordsWireFormat(byte[] bArr, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public String readString(byte[] bArr, int i) {
        return readString(bArr, i, 256, this.useUnicode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String readString(byte[] bArr, int i, int i2, int i3, boolean z) {
        int i4 = 0;
        try {
            if (!z) {
                while (i < i2 && bArr[i + i4] != 0) {
                    if (i4 > i3) {
                        LogStream logStream = log;
                        if (LogStream.level > 0) {
                            Hexdump.hexdump(System.err, bArr, i, i3 < 128 ? i3 + 8 : 128);
                        }
                        throw new RuntimeException("zero termination not found");
                    }
                    i4++;
                }
                return new String(bArr, i, i4, OEM_ENCODING);
            }
            if ((i - this.headerStart) % 2 != 0) {
                i++;
            }
            while (i + i4 + 1 < i2 && (bArr[i + i4] != 0 || bArr[i + i4 + 1] != 0)) {
                if (i4 > i3) {
                    LogStream logStream2 = log;
                    if (LogStream.level > 0) {
                        Hexdump.hexdump(System.err, bArr, i, i3 < 128 ? i3 + 8 : 128);
                    }
                    throw new RuntimeException("zero termination not found");
                }
                i4 += 2;
            }
            return new String(bArr, i, i4, SmbConstants.UNI_ENCODING);
        } catch (UnsupportedEncodingException e) {
            LogStream logStream3 = log;
            if (LogStream.level > 1) {
                e.printStackTrace(log);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String readString(byte[] bArr, int i, int i2, boolean z) {
        int i3 = 0;
        try {
            if (z) {
                if ((i - this.headerStart) % 2 != 0) {
                    i++;
                }
                do {
                    if (bArr[i + i3] == 0 && bArr[i + i3 + 1] == 0) {
                        return new String(bArr, i, i3, SmbConstants.UNI_ENCODING);
                    }
                    i3 += 2;
                } while (i3 <= i2);
                LogStream logStream = log;
                if (LogStream.level > 0) {
                    Hexdump.hexdump(System.err, bArr, i, i2 < 128 ? i2 + 8 : 128);
                }
                throw new RuntimeException("zero termination not found");
            }
            while (bArr[i + i3] != 0) {
                i3++;
                if (i3 > i2) {
                    LogStream logStream2 = log;
                    if (LogStream.level > 0) {
                        Hexdump.hexdump(System.err, bArr, i, i2 < 128 ? i2 + 8 : 128);
                    }
                    throw new RuntimeException("zero termination not found");
                }
            }
            return new String(bArr, i, i3, OEM_ENCODING);
        } catch (UnsupportedEncodingException e) {
            LogStream logStream3 = log;
            if (LogStream.level > 1) {
                e.printStackTrace(log);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int readStringLength(byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (bArr[i + i3] != 0) {
            int i4 = i3 + 1;
            if (i3 > i2) {
                throw new RuntimeException("zero termination not found: " + this);
            }
            i3 = i4;
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reset() {
        this.flags = (byte) 24;
        this.flags2 = 0;
        this.errorCode = 0;
        this.received = false;
        this.digest = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int stringWireLength(String str, int i) {
        int length = str.length() + 1;
        if (!this.useUnicode) {
            return length;
        }
        int length2 = (str.length() * 2) + 2;
        return i % 2 != 0 ? length2 + 1 : length2;
    }

    public String toString() {
        String str;
        switch (this.command) {
            case -96:
                str = "SMB_COM_NT_TRANSACT";
                break;
            case -95:
                str = "SMB_COM_NT_TRANSACT_SECONDARY";
                break;
            case -94:
                str = "SMB_COM_NT_CREATE_ANDX";
                break;
            case 0:
                str = "SMB_COM_CREATE_DIRECTORY";
                break;
            case 1:
                str = "SMB_COM_DELETE_DIRECTORY";
                break;
            case 4:
                str = "SMB_COM_CLOSE";
                break;
            case 6:
                str = "SMB_COM_DELETE";
                break;
            case 7:
                str = "SMB_COM_RENAME";
                break;
            case 8:
                str = "SMB_COM_QUERY_INFORMATION";
                break;
            case 16:
                str = "SMB_COM_CHECK_DIRECTORY";
                break;
            case FTPCommand.EPRT /* 37 */:
                str = "SMB_COM_TRANSACTION";
                break;
            case FTPCommand.MLSD /* 38 */:
                str = "SMB_COM_TRANSACTION_SECONDARY";
                break;
            case 42:
                str = "SMB_COM_MOVE";
                break;
            case 43:
                str = "SMB_COM_ECHO";
                break;
            case 45:
                str = "SMB_COM_OPEN_ANDX";
                break;
            case 46:
                str = "SMB_COM_READ_ANDX";
                break;
            case 47:
                str = "SMB_COM_WRITE_ANDX";
                break;
            case 50:
                str = "SMB_COM_TRANSACTION2";
                break;
            case 52:
                str = "SMB_COM_FIND_CLOSE2";
                break;
            case 113:
                str = "SMB_COM_TREE_DISCONNECT";
                break;
            case 114:
                str = "SMB_COM_NEGOTIATE";
                break;
            case 115:
                str = "SMB_COM_SESSION_SETUP_ANDX";
                break;
            case 116:
                str = "SMB_COM_LOGOFF_ANDX";
                break;
            case 117:
                str = "SMB_COM_TREE_CONNECT_ANDX";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        return new String("command=" + str + ",received=" + this.received + ",errorCode=" + (this.errorCode == 0 ? "0" : SmbException.getMessageByCode(this.errorCode)) + ",flags=0x" + Hexdump.toHexString(this.flags & 255, 4) + ",flags2=0x" + Hexdump.toHexString(this.flags2, 4) + ",signSeq=" + this.signSeq + ",tid=" + this.tid + ",pid=" + this.pid + ",uid=" + this.uid + ",mid=" + this.mid + ",wordCount=" + this.wordCount + ",byteCount=" + this.byteCount);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int writeBytesWireFormat(byte[] bArr, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public int writeHeaderWireFormat(byte[] bArr, int i) {
        System.arraycopy(header, 0, bArr, i, header.length);
        bArr[i + 4] = this.command;
        bArr[i + 9] = this.flags;
        writeInt2(this.flags2, bArr, i + 9 + 1);
        int i2 = i + 24;
        writeInt2(this.tid, bArr, i2);
        writeInt2(this.pid, bArr, i2 + 2);
        writeInt2(this.uid, bArr, i2 + 4);
        writeInt2(this.mid, bArr, i2 + 6);
        return 32;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int writeParameterWordsWireFormat(byte[] bArr, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public int writeString(String str, byte[] bArr, int i) {
        return writeString(str, bArr, i, this.useUnicode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int writeString(String str, byte[] bArr, int i, boolean z) {
        int i2;
        int i3;
        try {
            try {
                if (z) {
                    if ((i - this.headerStart) % 2 != 0) {
                        i3 = i + 1;
                        try {
                            bArr[i] = SMB_COM_CREATE_DIRECTORY;
                        } catch (UnsupportedEncodingException e) {
                            i2 = i3;
                            e = e;
                            LogStream logStream = log;
                            if (LogStream.level > 1) {
                                e.printStackTrace(log);
                            }
                            return i2 - i;
                        }
                    } else {
                        i3 = i;
                    }
                    System.arraycopy(str.getBytes(SmbConstants.UNI_ENCODING), 0, bArr, i3, str.length() * 2);
                    int length = (str.length() * 2) + i3;
                    i3 = length + 1;
                    bArr[length] = SMB_COM_CREATE_DIRECTORY;
                    i2 = i3 + 1;
                    bArr[i3] = SMB_COM_CREATE_DIRECTORY;
                } else {
                    byte[] bytes = str.getBytes(OEM_ENCODING);
                    System.arraycopy(bytes, 0, bArr, i, bytes.length);
                    int length2 = i + bytes.length;
                    i2 = length2 + 1;
                    bArr[length2] = SMB_COM_CREATE_DIRECTORY;
                }
            } catch (UnsupportedEncodingException e2) {
                e = e2;
                i2 = i;
            }
        } catch (UnsupportedEncodingException e3) {
            e = e3;
        }
        return i2 - i;
    }
}
