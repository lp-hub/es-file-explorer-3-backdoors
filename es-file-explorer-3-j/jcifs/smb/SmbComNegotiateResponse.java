package jcifs.smb;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import jcifs.smb.SmbTransport;
import jcifs.util.Hexdump;
import jcifs.util.LogStream;

/* loaded from: classes.dex */
class SmbComNegotiateResponse extends ServerMessageBlock {
    int dialectIndex;
    SmbTransport.ServerData server;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SmbComNegotiateResponse(SmbTransport.ServerData serverData) {
        this.server = serverData;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
    
        if (r0 == 32768) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0039, code lost:
    
        r0 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003e, code lost:
    
        if (r8[r1 + r0] != 0) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0046, code lost:
    
        if (r8[(r1 + r0) + 1] == 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0067, code lost:
    
        r7.server.oemDomainName = new java.lang.String(r8, r1, r0, jcifs.smb.SmbConstants.UNI_ENCODING);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
    
        r2 = r0 + 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004a, code lost:
    
        if (r2 <= 256) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0053, code lost:
    
        throw new java.lang.RuntimeException("zero termination not found");
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0075, code lost:
    
        r0 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007a, code lost:
    
        if (r8[r1 + r0] == 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007c, code lost:
    
        r2 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007e, code lost:
    
        if (r2 <= 256) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0087, code lost:
    
        throw new java.lang.RuntimeException("zero termination not found");
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0088, code lost:
    
        r7.server.oemDomainName = new java.lang.String(r8, r1, r0, jcifs.smb.ServerMessageBlock.OEM_ENCODING);
     */
    @Override // jcifs.smb.ServerMessageBlock
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int readBytesWireFormat(byte[] bArr, int i) {
        int i2;
        int i3;
        UnsupportedEncodingException e;
        int i4 = 0;
        if ((this.server.capabilities & Integer.MIN_VALUE) == 0) {
            this.server.encryptionKey = new byte[this.server.encryptionKeyLength];
            System.arraycopy(bArr, i, this.server.encryptionKey, 0, this.server.encryptionKeyLength);
            int i5 = i + this.server.encryptionKeyLength;
            if (this.byteCount > this.server.encryptionKeyLength) {
                try {
                    i3 = this.flags2 & 32768;
                } catch (UnsupportedEncodingException e2) {
                    i3 = 0;
                    e = e2;
                }
                try {
                } catch (UnsupportedEncodingException e3) {
                    e = e3;
                    LogStream logStream = log;
                    if (LogStream.level > 1) {
                        e.printStackTrace(log);
                    }
                    i2 = i3 + i5;
                    return i2 - i;
                }
            } else {
                this.server.oemDomainName = new String();
                i2 = i5;
            }
        } else {
            this.server.guid = new byte[16];
            System.arraycopy(bArr, i, this.server.guid, 0, 16);
            this.server.oemDomainName = new String();
            i2 = i;
        }
        return i2 - i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int readParameterWordsWireFormat(byte[] bArr, int i) {
        this.dialectIndex = readInt2(bArr, i);
        int i2 = i + 2;
        if (this.dialectIndex > 10) {
            return i2 - i;
        }
        int i3 = i2 + 1;
        this.server.securityMode = bArr[i2] & 255;
        this.server.security = this.server.securityMode & 1;
        this.server.encryptedPasswords = (this.server.securityMode & 2) == 2;
        this.server.signaturesEnabled = (this.server.securityMode & 4) == 4;
        this.server.signaturesRequired = (this.server.securityMode & 8) == 8;
        this.server.maxMpxCount = readInt2(bArr, i3);
        int i4 = i3 + 2;
        this.server.maxNumberVcs = readInt2(bArr, i4);
        int i5 = i4 + 2;
        this.server.maxBufferSize = readInt4(bArr, i5);
        int i6 = i5 + 4;
        this.server.maxRawSize = readInt4(bArr, i6);
        int i7 = i6 + 4;
        this.server.sessionKey = readInt4(bArr, i7);
        int i8 = i7 + 4;
        this.server.capabilities = readInt4(bArr, i8);
        int i9 = i8 + 4;
        this.server.serverTime = readTime(bArr, i9);
        int i10 = i9 + 8;
        this.server.serverTimeZone = readInt2(bArr, i10);
        int i11 = i10 + 2;
        int i12 = i11 + 1;
        this.server.encryptionKeyLength = bArr[i11] & 255;
        return i12 - i;
    }

    @Override // jcifs.smb.ServerMessageBlock
    public String toString() {
        return new String("SmbComNegotiateResponse[" + super.toString() + ",wordCount=" + this.wordCount + ",dialectIndex=" + this.dialectIndex + ",securityMode=0x" + Hexdump.toHexString(this.server.securityMode, 1) + ",security=" + (this.server.security == 0 ? "share" : "user") + ",encryptedPasswords=" + this.server.encryptedPasswords + ",maxMpxCount=" + this.server.maxMpxCount + ",maxNumberVcs=" + this.server.maxNumberVcs + ",maxBufferSize=" + this.server.maxBufferSize + ",maxRawSize=" + this.server.maxRawSize + ",sessionKey=0x" + Hexdump.toHexString(this.server.sessionKey, 8) + ",capabilities=0x" + Hexdump.toHexString(this.server.capabilities, 8) + ",serverTime=" + new Date(this.server.serverTime) + ",serverTimeZone=" + this.server.serverTimeZone + ",encryptionKeyLength=" + this.server.encryptionKeyLength + ",byteCount=" + this.byteCount + ",oemDomainName=" + this.server.oemDomainName + "]");
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
