package jcifs.ntlmssp;

import java.io.IOException;
import java.net.UnknownHostException;
import jcifs.Config;
import jcifs.netbios.NbtAddress;
import jcifs.smb.SmbConstants;
import jcifs.util.Hexdump;

/* loaded from: classes.dex */
public class Type2Message extends NtlmMessage {
    private static final String DEFAULT_DOMAIN;
    private static final int DEFAULT_FLAGS;
    private static final byte[] DEFAULT_TARGET_INFORMATION;
    private byte[] challenge;
    private byte[] context;
    private String target;
    private byte[] targetInformation;

    static {
        int i;
        DEFAULT_FLAGS = (Config.getBoolean("jcifs.smb.client.useUnicode", true) ? 1 : 2) | 512;
        DEFAULT_DOMAIN = Config.getProperty("jcifs.smb.client.domain", null);
        byte[] bArr = new byte[0];
        if (DEFAULT_DOMAIN != null) {
            try {
                bArr = DEFAULT_DOMAIN.getBytes(SmbConstants.UNI_ENCODING);
            } catch (IOException e) {
            }
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[0];
        try {
            String hostName = NbtAddress.getLocalHost().getHostName();
            if (hostName != null) {
                try {
                    bArr2 = hostName.getBytes(SmbConstants.UNI_ENCODING);
                } catch (IOException e2) {
                }
            }
        } catch (UnknownHostException e3) {
        }
        int length2 = bArr2.length;
        byte[] bArr3 = new byte[(length2 > 0 ? length2 + 4 : 0) + (length > 0 ? length + 4 : 0) + 4];
        if (length > 0) {
            writeUShort(bArr3, 0, 2);
            writeUShort(bArr3, 2, length);
            System.arraycopy(bArr, 0, bArr3, 4, length);
            i = length + 4;
        } else {
            i = 0;
        }
        if (length2 > 0) {
            writeUShort(bArr3, i, 1);
            int i2 = i + 2;
            writeUShort(bArr3, i2, length2);
            System.arraycopy(bArr2, 0, bArr3, i2 + 2, length2);
        }
        DEFAULT_TARGET_INFORMATION = bArr3;
    }

    public Type2Message() {
        this(getDefaultFlags(), (byte[]) null, (String) null);
    }

    public Type2Message(int i, byte[] bArr, String str) {
        setFlags(i);
        setChallenge(bArr);
        setTarget(str);
        if (str != null) {
            setTargetInformation(getDefaultTargetInformation());
        }
    }

    public Type2Message(Type1Message type1Message) {
        this(type1Message, (byte[]) null, (String) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Type2Message(Type1Message type1Message, byte[] bArr, String str) {
        this(r0, bArr, str);
        int defaultFlags = getDefaultFlags(type1Message);
        if (type1Message != null && str == null && type1Message.getFlag(4)) {
            str = getDefaultDomain();
        }
    }

    public Type2Message(byte[] bArr) {
        parse(bArr);
    }

    public static String getDefaultDomain() {
        return DEFAULT_DOMAIN;
    }

    public static int getDefaultFlags() {
        return DEFAULT_FLAGS;
    }

    public static int getDefaultFlags(Type1Message type1Message) {
        if (type1Message == null) {
            return DEFAULT_FLAGS;
        }
        int flags = type1Message.getFlags();
        int i = ((flags & 1) != 0 ? 1 : 2) | 512;
        return ((flags & 4) == 0 || getDefaultDomain() == null) ? i : i | 65540;
    }

    public static byte[] getDefaultTargetInformation() {
        return DEFAULT_TARGET_INFORMATION;
    }

    private void parse(byte[] bArr) {
        for (int i = 0; i < 8; i++) {
            if (bArr[i] != NTLMSSP_SIGNATURE[i]) {
                throw new IOException("Not an NTLMSSP message.");
            }
        }
        if (readULong(bArr, 8) != 2) {
            throw new IOException("Not a Type 2 message.");
        }
        int readULong = readULong(bArr, 20);
        setFlags(readULong);
        byte[] readSecurityBuffer = readSecurityBuffer(bArr, 12);
        setTarget(readSecurityBuffer.length != 0 ? new String(readSecurityBuffer, (readULong & 1) != 0 ? SmbConstants.UNI_ENCODING : getOEMEncoding()) : null);
        int i2 = 24;
        while (true) {
            if (i2 >= 32) {
                break;
            }
            if (bArr[i2] != 0) {
                byte[] bArr2 = new byte[8];
                System.arraycopy(bArr, 24, bArr2, 0, 8);
                setChallenge(bArr2);
                break;
            }
            i2++;
        }
        int readULong2 = readULong(bArr, 16);
        if (readULong2 == 32 || bArr.length == 32) {
            return;
        }
        int i3 = 32;
        while (true) {
            if (i3 >= 40) {
                break;
            }
            if (bArr[i3] != 0) {
                byte[] bArr3 = new byte[8];
                System.arraycopy(bArr, 32, bArr3, 0, 8);
                setContext(bArr3);
                break;
            }
            i3++;
        }
        if (readULong2 == 40 || bArr.length == 40) {
            return;
        }
        byte[] readSecurityBuffer2 = readSecurityBuffer(bArr, 40);
        if (readSecurityBuffer2.length != 0) {
            setTargetInformation(readSecurityBuffer2);
        }
    }

    public byte[] getChallenge() {
        return this.challenge;
    }

    public byte[] getContext() {
        return this.context;
    }

    public String getTarget() {
        return this.target;
    }

    public byte[] getTargetInformation() {
        return this.targetInformation;
    }

    public void setChallenge(byte[] bArr) {
        this.challenge = bArr;
    }

    public void setContext(byte[] bArr) {
        this.context = bArr;
    }

    public void setTarget(String str) {
        this.target = str;
    }

    public void setTargetInformation(byte[] bArr) {
        this.targetInformation = bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0046 A[Catch: IOException -> 0x00a3, TryCatch #0 {IOException -> 0x00a3, blocks: (B:3:0x0005, B:6:0x0022, B:8:0x0028, B:10:0x002c, B:13:0x0036, B:15:0x003b, B:19:0x0046, B:20:0x0049, B:22:0x004e, B:23:0x004f, B:26:0x006e, B:28:0x0078, B:30:0x0082, B:34:0x009e, B:39:0x008a, B:40:0x0097), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004e A[Catch: IOException -> 0x00a3, TryCatch #0 {IOException -> 0x00a3, blocks: (B:3:0x0005, B:6:0x0022, B:8:0x0028, B:10:0x002c, B:13:0x0036, B:15:0x003b, B:19:0x0046, B:20:0x0049, B:22:0x004e, B:23:0x004f, B:26:0x006e, B:28:0x0078, B:30:0x0082, B:34:0x009e, B:39:0x008a, B:40:0x0097), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0078 A[Catch: IOException -> 0x00a3, TryCatch #0 {IOException -> 0x00a3, blocks: (B:3:0x0005, B:6:0x0022, B:8:0x0028, B:10:0x002c, B:13:0x0036, B:15:0x003b, B:19:0x0046, B:20:0x0049, B:22:0x004e, B:23:0x004f, B:26:0x006e, B:28:0x0078, B:30:0x0082, B:34:0x009e, B:39:0x008a, B:40:0x0097), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0082 A[Catch: IOException -> 0x00a3, TryCatch #0 {IOException -> 0x00a3, blocks: (B:3:0x0005, B:6:0x0022, B:8:0x0028, B:10:0x002c, B:13:0x0036, B:15:0x003b, B:19:0x0046, B:20:0x0049, B:22:0x004e, B:23:0x004f, B:26:0x006e, B:28:0x0078, B:30:0x0082, B:34:0x009e, B:39:0x008a, B:40:0x0097), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e A[Catch: IOException -> 0x00a3, TRY_LEAVE, TryCatch #0 {IOException -> 0x00a3, blocks: (B:3:0x0005, B:6:0x0022, B:8:0x0028, B:10:0x002c, B:13:0x0036, B:15:0x003b, B:19:0x0046, B:20:0x0049, B:22:0x004e, B:23:0x004f, B:26:0x006e, B:28:0x0078, B:30:0x0082, B:34:0x009e, B:39:0x008a, B:40:0x0097), top: B:2:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b0  */
    @Override // jcifs.ntlmssp.NtlmMessage
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public byte[] toByteArray() {
        byte[] bArr;
        int i;
        byte[] bArr2;
        int i2;
        try {
            String target = getTarget();
            byte[] challenge = getChallenge();
            byte[] context = getContext();
            byte[] targetInformation = getTargetInformation();
            int flags = getFlags();
            byte[] bArr3 = new byte[0];
            if ((flags & 4) == 0) {
                bArr = bArr3;
                i = flags;
            } else if (target == null || target.length() == 0) {
                bArr = bArr3;
                i = flags & (-5);
            } else {
                bArr = (flags & 1) != 0 ? target.getBytes(SmbConstants.UNI_ENCODING) : target.toUpperCase().getBytes(getOEMEncoding());
                i = flags;
            }
            if (targetInformation != null) {
                i |= NtlmFlags.NTLMSSP_NEGOTIATE_TARGET_INFO;
                if (context == null) {
                    bArr2 = new byte[8];
                    i2 = i;
                    int i3 = bArr2 == null ? 40 : 32;
                    int i4 = targetInformation == null ? i3 + 8 : i3;
                    byte[] bArr4 = new byte[(targetInformation == null ? targetInformation.length : 0) + i4 + bArr.length];
                    System.arraycopy(NTLMSSP_SIGNATURE, 0, bArr4, 0, 8);
                    writeULong(bArr4, 8, 2);
                    writeSecurityBuffer(bArr4, 12, i4, bArr);
                    writeULong(bArr4, 20, i2);
                    System.arraycopy(challenge == null ? challenge : new byte[8], 0, bArr4, 24, 8);
                    if (bArr2 != null) {
                        System.arraycopy(bArr2, 0, bArr4, 32, 8);
                    }
                    if (targetInformation != null) {
                        writeSecurityBuffer(bArr4, 40, bArr.length + i4, targetInformation);
                    }
                    return bArr4;
                }
            }
            bArr2 = context;
            i2 = i;
            if (bArr2 == null) {
            }
            if (targetInformation == null) {
            }
            byte[] bArr42 = new byte[(targetInformation == null ? targetInformation.length : 0) + i4 + bArr.length];
            System.arraycopy(NTLMSSP_SIGNATURE, 0, bArr42, 0, 8);
            writeULong(bArr42, 8, 2);
            writeSecurityBuffer(bArr42, 12, i4, bArr);
            writeULong(bArr42, 20, i2);
            System.arraycopy(challenge == null ? challenge : new byte[8], 0, bArr42, 24, 8);
            if (bArr2 != null) {
            }
            if (targetInformation != null) {
            }
            return bArr42;
        } catch (IOException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    public String toString() {
        String target = getTarget();
        byte[] challenge = getChallenge();
        byte[] context = getContext();
        byte[] targetInformation = getTargetInformation();
        return "Type2Message[target=" + target + ",challenge=" + (challenge == null ? "null" : "<" + challenge.length + " bytes>") + ",context=" + (context == null ? "null" : "<" + context.length + " bytes>") + ",targetInformation=" + (targetInformation == null ? "null" : "<" + targetInformation.length + " bytes>") + ",flags=0x" + Hexdump.toHexString(getFlags(), 8) + "]";
    }
}
