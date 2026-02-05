package jcifs.smb;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import jcifs.util.Hexdump;
import jcifs.util.LogStream;

/* loaded from: classes.dex */
public class SigningDigest implements SmbConstants {
    static LogStream log = LogStream.getInstance();
    private boolean bypass;
    private MessageDigest digest;
    private byte[] macSigningKey;
    private int signSequence;
    private int updates;

    public SigningDigest(SmbTransport smbTransport, NtlmPasswordAuthentication ntlmPasswordAuthentication) {
        this.bypass = false;
        try {
            this.digest = MessageDigest.getInstance("MD5");
            try {
                switch (LM_COMPATIBILITY) {
                    case 0:
                    case 1:
                    case 2:
                        this.macSigningKey = new byte[40];
                        ntlmPasswordAuthentication.getUserSessionKey(smbTransport.server.encryptionKey, this.macSigningKey, 0);
                        System.arraycopy(ntlmPasswordAuthentication.getUnicodeHash(smbTransport.server.encryptionKey), 0, this.macSigningKey, 16, 24);
                        break;
                    case 3:
                    case 4:
                    case 5:
                        this.macSigningKey = new byte[16];
                        ntlmPasswordAuthentication.getUserSessionKey(smbTransport.server.encryptionKey, this.macSigningKey, 0);
                        break;
                    default:
                        this.macSigningKey = new byte[40];
                        ntlmPasswordAuthentication.getUserSessionKey(smbTransport.server.encryptionKey, this.macSigningKey, 0);
                        System.arraycopy(ntlmPasswordAuthentication.getUnicodeHash(smbTransport.server.encryptionKey), 0, this.macSigningKey, 16, 24);
                        break;
                }
                LogStream logStream = log;
                if (LogStream.level >= 5) {
                    log.println("LM_COMPATIBILITY=" + LM_COMPATIBILITY);
                    Hexdump.hexdump(log, this.macSigningKey, 0, this.macSigningKey.length);
                }
            } catch (Exception e) {
                throw new SmbException("", e);
            }
        } catch (NoSuchAlgorithmException e2) {
            LogStream logStream2 = log;
            if (LogStream.level > 0) {
                e2.printStackTrace(log);
            }
            throw new SmbException("MD5", e2);
        }
    }

    public SigningDigest(byte[] bArr, boolean z) {
        this.bypass = false;
        try {
            this.digest = MessageDigest.getInstance("MD5");
            this.macSigningKey = bArr;
            this.bypass = z;
            this.updates = 0;
            this.signSequence = 0;
            LogStream logStream = log;
            if (LogStream.level >= 5) {
                log.println("macSigningKey:");
                Hexdump.hexdump(log, bArr, 0, bArr.length);
            }
        } catch (NoSuchAlgorithmException e) {
            LogStream logStream2 = log;
            if (LogStream.level > 0) {
                e.printStackTrace(log);
            }
            throw new SmbException("MD5", e);
        }
    }

    public byte[] digest() {
        byte[] digest = this.digest.digest();
        LogStream logStream = log;
        if (LogStream.level >= 5) {
            log.println("digest: ");
            Hexdump.hexdump(log, digest, 0, digest.length);
            log.flush();
        }
        this.updates = 0;
        return digest;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void sign(byte[] bArr, int i, int i2, ServerMessageBlock serverMessageBlock, ServerMessageBlock serverMessageBlock2) {
        serverMessageBlock.signSeq = this.signSequence;
        if (serverMessageBlock2 != null) {
            serverMessageBlock2.signSeq = this.signSequence + 1;
            serverMessageBlock2.verifyFailed = false;
        }
        try {
            update(this.macSigningKey, 0, this.macSigningKey.length);
            int i3 = i + 14;
            for (int i4 = 0; i4 < 8; i4++) {
                bArr[i3 + i4] = 0;
            }
            ServerMessageBlock.writeInt4(this.signSequence, bArr, i3);
            update(bArr, i, i2);
            System.arraycopy(digest(), 0, bArr, i3, 8);
            if (this.bypass) {
                this.bypass = false;
                System.arraycopy("BSRSPYL ".getBytes(), 0, bArr, i3, 8);
            }
        } catch (Exception e) {
            LogStream logStream = log;
            if (LogStream.level > 0) {
                e.printStackTrace(log);
            }
        } finally {
            this.signSequence += 2;
        }
    }

    public String toString() {
        return "LM_COMPATIBILITY=" + LM_COMPATIBILITY + " MacSigningKey=" + Hexdump.toHexString(this.macSigningKey, 0, this.macSigningKey.length);
    }

    public void update(byte[] bArr, int i, int i2) {
        LogStream logStream = log;
        if (LogStream.level >= 5) {
            log.println("update: " + this.updates + " " + i + ":" + i2);
            Hexdump.hexdump(log, bArr, i, Math.min(i2, 256));
            log.flush();
        }
        if (i2 == 0) {
            return;
        }
        this.digest.update(bArr, i, i2);
        this.updates++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean verify(byte[] bArr, int i, ServerMessageBlock serverMessageBlock) {
        update(this.macSigningKey, 0, this.macSigningKey.length);
        update(bArr, i, 14);
        byte[] bArr2 = new byte[8];
        ServerMessageBlock.writeInt4(serverMessageBlock.signSeq, bArr2, 0);
        update(bArr2, 0, bArr2.length);
        int i2 = i + 14 + 8;
        if (serverMessageBlock.command == 46) {
            SmbComReadAndXResponse smbComReadAndXResponse = (SmbComReadAndXResponse) serverMessageBlock;
            update(bArr, i2, ((serverMessageBlock.length - smbComReadAndXResponse.dataLength) - 14) - 8);
            update(smbComReadAndXResponse.f3449b, smbComReadAndXResponse.off, smbComReadAndXResponse.dataLength);
        } else {
            update(bArr, i2, (serverMessageBlock.length - 14) - 8);
        }
        byte[] digest = digest();
        for (int i3 = 0; i3 < 8; i3++) {
            if (digest[i3] != bArr[i + 14 + i3]) {
                LogStream logStream = log;
                if (LogStream.level >= 2) {
                    log.println("signature verification failure");
                    Hexdump.hexdump(log, digest, 0, 8);
                    Hexdump.hexdump(log, bArr, i + 14, 8);
                }
                serverMessageBlock.verifyFailed = true;
                return true;
            }
        }
        serverMessageBlock.verifyFailed = false;
        return false;
    }
}
