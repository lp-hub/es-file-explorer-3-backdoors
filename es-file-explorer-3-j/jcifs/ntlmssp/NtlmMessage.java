package jcifs.ntlmssp;

import jcifs.Config;

/* loaded from: classes.dex */
public abstract class NtlmMessage implements NtlmFlags {
    protected static final byte[] NTLMSSP_SIGNATURE = {78, 84, 76, 77, 83, 83, 80, 0};
    private static final String OEM_ENCODING = Config.DEFAULT_OEM_ENCODING;
    protected static final String UNI_ENCODING = "UTF-16LE";
    private int flags;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getOEMEncoding() {
        return OEM_ENCODING;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] readSecurityBuffer(byte[] bArr, int i) {
        int readUShort = readUShort(bArr, i);
        byte[] bArr2 = new byte[readUShort];
        System.arraycopy(bArr, readULong(bArr, i + 4), bArr2, 0, readUShort);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int readULong(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
    }

    static int readUShort(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeSecurityBuffer(byte[] bArr, int i, int i2, byte[] bArr2) {
        int length = bArr2 != null ? bArr2.length : 0;
        if (length == 0) {
            return;
        }
        writeUShort(bArr, i, length);
        writeUShort(bArr, i + 2, length);
        writeULong(bArr, i + 4, i2);
        System.arraycopy(bArr2, 0, bArr, i2, length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeULong(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 & 255);
        bArr[i + 1] = (byte) ((i2 >> 8) & 255);
        bArr[i + 2] = (byte) ((i2 >> 16) & 255);
        bArr[i + 3] = (byte) ((i2 >> 24) & 255);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeUShort(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 & 255);
        bArr[i + 1] = (byte) ((i2 >> 8) & 255);
    }

    public boolean getFlag(int i) {
        return (getFlags() & i) != 0;
    }

    public int getFlags() {
        return this.flags;
    }

    public void setFlag(int i, boolean z) {
        setFlags(z ? getFlags() | i : getFlags() & (i ^ (-1)));
    }

    public void setFlags(int i) {
        this.flags = i;
    }

    public abstract byte[] toByteArray();
}
