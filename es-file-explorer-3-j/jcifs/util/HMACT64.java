package jcifs.util;

import java.security.MessageDigest;

/* loaded from: classes.dex */
public class HMACT64 extends MessageDigest implements Cloneable {
    private static final int BLOCK_LENGTH = 64;
    private static final byte IPAD = 54;
    private static final byte OPAD = 92;
    private byte[] ipad;
    private MessageDigest md5;
    private byte[] opad;

    private HMACT64(HMACT64 hmact64) {
        super("HMACT64");
        this.ipad = new byte[64];
        this.opad = new byte[64];
        this.ipad = hmact64.ipad;
        this.opad = hmact64.opad;
        this.md5 = (MessageDigest) hmact64.md5.clone();
    }

    public HMACT64(byte[] bArr) {
        super("HMACT64");
        this.ipad = new byte[64];
        this.opad = new byte[64];
        int min = Math.min(bArr.length, 64);
        for (int i = 0; i < min; i++) {
            this.ipad[i] = (byte) (bArr[i] ^ IPAD);
            this.opad[i] = (byte) (bArr[i] ^ OPAD);
        }
        while (min < 64) {
            this.ipad[min] = IPAD;
            this.opad[min] = OPAD;
            min++;
        }
        try {
            this.md5 = MessageDigest.getInstance("MD5");
            engineReset();
        } catch (Exception e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    @Override // java.security.MessageDigest, java.security.MessageDigestSpi
    public Object clone() {
        try {
            return new HMACT64(this);
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    @Override // java.security.MessageDigestSpi
    protected int engineDigest(byte[] bArr, int i, int i2) {
        byte[] digest = this.md5.digest();
        this.md5.update(this.opad);
        this.md5.update(digest);
        try {
            return this.md5.digest(bArr, i, i2);
        } catch (Exception e) {
            throw new IllegalStateException();
        }
    }

    @Override // java.security.MessageDigestSpi
    protected byte[] engineDigest() {
        byte[] digest = this.md5.digest();
        this.md5.update(this.opad);
        return this.md5.digest(digest);
    }

    @Override // java.security.MessageDigestSpi
    protected int engineGetDigestLength() {
        return this.md5.getDigestLength();
    }

    @Override // java.security.MessageDigestSpi
    protected void engineReset() {
        this.md5.reset();
        this.md5.update(this.ipad);
    }

    @Override // java.security.MessageDigestSpi
    protected void engineUpdate(byte b2) {
        this.md5.update(b2);
    }

    @Override // java.security.MessageDigestSpi
    protected void engineUpdate(byte[] bArr, int i, int i2) {
        this.md5.update(bArr, i, i2);
    }
}
