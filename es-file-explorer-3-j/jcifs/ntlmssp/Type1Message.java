package jcifs.ntlmssp;

import java.io.IOException;
import java.net.UnknownHostException;
import jcifs.Config;
import jcifs.netbios.NbtAddress;
import jcifs.util.Hexdump;

/* loaded from: classes.dex */
public class Type1Message extends NtlmMessage {
    private static final String DEFAULT_DOMAIN;
    private static final int DEFAULT_FLAGS;
    private static final String DEFAULT_WORKSTATION;
    private String suppliedDomain;
    private String suppliedWorkstation;

    static {
        String str;
        DEFAULT_FLAGS = (Config.getBoolean("jcifs.smb.client.useUnicode", true) ? 1 : 2) | 512;
        DEFAULT_DOMAIN = Config.getProperty("jcifs.smb.client.domain", null);
        try {
            str = NbtAddress.getLocalHost().getHostName();
        } catch (UnknownHostException e) {
            str = null;
        }
        DEFAULT_WORKSTATION = str;
    }

    public Type1Message() {
        this(getDefaultFlags(), getDefaultDomain(), getDefaultWorkstation());
    }

    public Type1Message(int i, String str, String str2) {
        setFlags(getDefaultFlags() | i);
        setSuppliedDomain(str);
        setSuppliedWorkstation(str2 == null ? getDefaultWorkstation() : str2);
    }

    public Type1Message(byte[] bArr) {
        parse(bArr);
    }

    public static String getDefaultDomain() {
        return DEFAULT_DOMAIN;
    }

    public static int getDefaultFlags() {
        return DEFAULT_FLAGS;
    }

    public static String getDefaultWorkstation() {
        return DEFAULT_WORKSTATION;
    }

    private void parse(byte[] bArr) {
        for (int i = 0; i < 8; i++) {
            if (bArr[i] != NTLMSSP_SIGNATURE[i]) {
                throw new IOException("Not an NTLMSSP message.");
            }
        }
        if (readULong(bArr, 8) != 1) {
            throw new IOException("Not a Type 1 message.");
        }
        int readULong = readULong(bArr, 12);
        String str = (readULong & 4096) != 0 ? new String(readSecurityBuffer(bArr, 16), getOEMEncoding()) : null;
        String str2 = (readULong & 8192) != 0 ? new String(readSecurityBuffer(bArr, 24), getOEMEncoding()) : null;
        setFlags(readULong);
        setSuppliedDomain(str);
        setSuppliedWorkstation(str2);
    }

    public String getSuppliedDomain() {
        return this.suppliedDomain;
    }

    public String getSuppliedWorkstation() {
        return this.suppliedWorkstation;
    }

    public void setSuppliedDomain(String str) {
        this.suppliedDomain = str;
    }

    public void setSuppliedWorkstation(String str) {
        this.suppliedWorkstation = str;
    }

    @Override // jcifs.ntlmssp.NtlmMessage
    public byte[] toByteArray() {
        int i;
        byte[] bArr;
        int i2;
        boolean z = true;
        boolean z2 = false;
        try {
            String suppliedDomain = getSuppliedDomain();
            String suppliedWorkstation = getSuppliedWorkstation();
            int flags = getFlags();
            byte[] bArr2 = new byte[0];
            if (suppliedDomain == null || suppliedDomain.length() == 0) {
                i = flags & (-4097);
                bArr = bArr2;
            } else {
                bArr = suppliedDomain.toUpperCase().getBytes(getOEMEncoding());
                i = flags | 4096;
                z2 = true;
            }
            byte[] bArr3 = new byte[0];
            if (suppliedWorkstation == null || suppliedWorkstation.length() == 0) {
                boolean z3 = z2;
                i2 = i & (-8193);
                z = z3;
            } else {
                i2 = i | 8192;
                bArr3 = suppliedWorkstation.toUpperCase().getBytes(getOEMEncoding());
            }
            byte[] bArr4 = new byte[z ? bArr.length + 32 + bArr3.length : 16];
            System.arraycopy(NTLMSSP_SIGNATURE, 0, bArr4, 0, 8);
            writeULong(bArr4, 8, 1);
            writeULong(bArr4, 12, i2);
            if (z) {
                writeSecurityBuffer(bArr4, 16, 32, bArr);
                writeSecurityBuffer(bArr4, 24, bArr.length + 32, bArr3);
            }
            return bArr4;
        } catch (IOException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    public String toString() {
        String suppliedDomain = getSuppliedDomain();
        String suppliedWorkstation = getSuppliedWorkstation();
        StringBuilder append = new StringBuilder().append("Type1Message[suppliedDomain=");
        if (suppliedDomain == null) {
            suppliedDomain = "null";
        }
        return append.append(suppliedDomain).append(",suppliedWorkstation=").append(suppliedWorkstation == null ? "null" : suppliedWorkstation).append(",flags=0x").append(Hexdump.toHexString(getFlags(), 8)).append("]").toString();
    }
}
