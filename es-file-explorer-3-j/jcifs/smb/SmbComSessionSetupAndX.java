package jcifs.smb;

import jcifs.Config;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SmbComSessionSetupAndX extends AndXServerMessageBlock {
    private static final int BATCH_LIMIT = Config.getInt("jcifs.smb.client.SessionSetupAndX.TreeConnectAndX", 1);
    private static final boolean DISABLE_PLAIN_TEXT_PASSWORDS = Config.getBoolean("jcifs.smb.client.disablePlainTextPasswords", true);
    private String accountName;
    private byte[] blob;
    private int capabilities;
    Object cred;
    private byte[] lmHash;
    private byte[] ntHash;
    private String primaryDomain;
    SmbSession session;
    private int sessionKey;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SmbComSessionSetupAndX(SmbSession smbSession, ServerMessageBlock serverMessageBlock, Object obj) {
        super(serverMessageBlock);
        this.blob = null;
        this.command = (byte) 115;
        this.session = smbSession;
        this.cred = obj;
        this.sessionKey = smbSession.transport.sessionKey;
        this.capabilities = smbSession.transport.capabilities;
        if (smbSession.transport.server.security != 1) {
            if (smbSession.transport.server.security != 0) {
                throw new SmbException("Unsupported");
            }
            if (!(obj instanceof NtlmPasswordAuthentication)) {
                throw new SmbException("Unsupported credential type");
            }
            NtlmPasswordAuthentication ntlmPasswordAuthentication = (NtlmPasswordAuthentication) obj;
            this.lmHash = new byte[0];
            this.ntHash = new byte[0];
            this.accountName = ntlmPasswordAuthentication.username;
            if (this.useUnicode) {
                this.accountName = this.accountName.toUpperCase();
            }
            this.primaryDomain = ntlmPasswordAuthentication.domain.toUpperCase();
            return;
        }
        if (!(obj instanceof NtlmPasswordAuthentication)) {
            if (!(obj instanceof byte[])) {
                throw new SmbException("Unsupported credential type");
            }
            this.blob = (byte[]) obj;
            return;
        }
        NtlmPasswordAuthentication ntlmPasswordAuthentication2 = (NtlmPasswordAuthentication) obj;
        if (ntlmPasswordAuthentication2 == NtlmPasswordAuthentication.ANONYMOUS) {
            this.lmHash = new byte[0];
            this.ntHash = new byte[0];
            this.capabilities &= Integer.MAX_VALUE;
        } else if (smbSession.transport.server.encryptedPasswords) {
            this.lmHash = ntlmPasswordAuthentication2.getAnsiHash(smbSession.transport.server.encryptionKey);
            this.ntHash = ntlmPasswordAuthentication2.getUnicodeHash(smbSession.transport.server.encryptionKey);
            if (this.lmHash.length == 0 && this.ntHash.length == 0) {
                throw new RuntimeException("Null setup prohibited.");
            }
        } else {
            if (DISABLE_PLAIN_TEXT_PASSWORDS) {
                throw new RuntimeException("Plain text passwords are disabled");
            }
            if (this.useUnicode) {
                String password = ntlmPasswordAuthentication2.getPassword();
                this.lmHash = new byte[0];
                this.ntHash = new byte[(password.length() + 1) * 2];
                writeString(password, this.ntHash, 0);
            } else {
                String password2 = ntlmPasswordAuthentication2.getPassword();
                this.lmHash = new byte[(password2.length() + 1) * 2];
                this.ntHash = new byte[0];
                writeString(password2, this.lmHash, 0);
            }
        }
        this.accountName = ntlmPasswordAuthentication2.username;
        if (this.useUnicode) {
            this.accountName = this.accountName.toUpperCase();
        }
        this.primaryDomain = ntlmPasswordAuthentication2.domain.toUpperCase();
    }

    @Override // jcifs.smb.AndXServerMessageBlock
    int getBatchLimit(byte b2) {
        if (b2 == 117) {
            return BATCH_LIMIT;
        }
        return 0;
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

    @Override // jcifs.smb.AndXServerMessageBlock, jcifs.smb.ServerMessageBlock
    public String toString() {
        StringBuilder append = new StringBuilder().append("SmbComSessionSetupAndX[").append(super.toString()).append(",snd_buf_size=").append(this.session.transport.snd_buf_size).append(",maxMpxCount=").append(this.session.transport.maxMpxCount).append(",VC_NUMBER=");
        SmbTransport smbTransport = this.session.transport;
        StringBuilder append2 = append.append(1).append(",sessionKey=").append(this.sessionKey).append(",lmHash.length=").append(this.lmHash == null ? 0 : this.lmHash.length).append(",ntHash.length=").append(this.ntHash != null ? this.ntHash.length : 0).append(",capabilities=").append(this.capabilities).append(",accountName=").append(this.accountName).append(",primaryDomain=").append(this.primaryDomain).append(",NATIVE_OS=");
        SmbTransport smbTransport2 = this.session.transport;
        StringBuilder append3 = append2.append(SmbTransport.NATIVE_OS).append(",NATIVE_LANMAN=");
        SmbTransport smbTransport3 = this.session.transport;
        return new String(append3.append(SmbTransport.NATIVE_LANMAN).append("]").toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int writeBytesWireFormat(byte[] bArr, int i) {
        int writeString;
        if (this.blob != null) {
            System.arraycopy(this.blob, 0, bArr, i, this.blob.length);
            writeString = this.blob.length + i;
        } else {
            System.arraycopy(this.lmHash, 0, bArr, i, this.lmHash.length);
            int length = this.lmHash.length + i;
            System.arraycopy(this.ntHash, 0, bArr, length, this.ntHash.length);
            int length2 = length + this.ntHash.length;
            int writeString2 = length2 + writeString(this.accountName, bArr, length2);
            writeString = writeString2 + writeString(this.primaryDomain, bArr, writeString2);
        }
        SmbTransport smbTransport = this.session.transport;
        int writeString3 = writeString + writeString(SmbTransport.NATIVE_OS, bArr, writeString);
        SmbTransport smbTransport2 = this.session.transport;
        return (writeString3 + writeString(SmbTransport.NATIVE_LANMAN, bArr, writeString3)) - i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // jcifs.smb.ServerMessageBlock
    public int writeParameterWordsWireFormat(byte[] bArr, int i) {
        int i2;
        writeInt2(this.session.transport.snd_buf_size, bArr, i);
        int i3 = i + 2;
        writeInt2(this.session.transport.maxMpxCount, bArr, i3);
        int i4 = i3 + 2;
        SmbTransport smbTransport = this.session.transport;
        writeInt2(1L, bArr, i4);
        int i5 = i4 + 2;
        writeInt4(this.sessionKey, bArr, i5);
        int i6 = i5 + 4;
        if (this.blob != null) {
            writeInt2(this.blob.length, bArr, i6);
            i2 = i6 + 2;
        } else {
            writeInt2(this.lmHash.length, bArr, i6);
            int i7 = i6 + 2;
            writeInt2(this.ntHash.length, bArr, i7);
            i2 = i7 + 2;
        }
        int i8 = i2 + 1;
        bArr[i2] = 0;
        int i9 = i8 + 1;
        bArr[i8] = 0;
        int i10 = i9 + 1;
        bArr[i9] = 0;
        int i11 = i10 + 1;
        bArr[i10] = 0;
        writeInt4(this.capabilities, bArr, i11);
        return (i11 + 4) - i;
    }
}
