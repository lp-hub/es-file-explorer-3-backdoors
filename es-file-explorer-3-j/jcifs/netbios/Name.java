package jcifs.netbios;

import java.io.UnsupportedEncodingException;
import jcifs.Config;
import jcifs.util.Hexdump;

/* loaded from: classes.dex */
public class Name {
    private static final String DEFAULT_SCOPE = Config.getProperty("jcifs.netbios.scope");
    static final String OEM_ENCODING = Config.getProperty("jcifs.encoding", System.getProperty("file.encoding"));
    private static final int SCOPE_OFFSET = 33;
    private static final int TYPE_OFFSET = 31;
    public int hexCode;
    public String name;
    public String scope;
    int srcHashCode;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Name() {
    }

    public Name(String str, int i, String str2) {
        this.name = (str.length() > 15 ? str.substring(0, 15) : str).toUpperCase();
        this.hexCode = i;
        this.scope = (str2 == null || str2.length() <= 0) ? DEFAULT_SCOPE : str2;
        this.srcHashCode = 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Name)) {
            return false;
        }
        Name name = (Name) obj;
        return (this.scope == null && name.scope == null) ? this.name.equals(name.name) && this.hexCode == name.hexCode : this.name.equals(name.name) && this.hexCode == name.hexCode && this.scope.equals(name.scope);
    }

    public int hashCode() {
        int hashCode = this.name.hashCode() + (this.hexCode * 65599) + (this.srcHashCode * 65599);
        return (this.scope == null || this.scope.length() == 0) ? hashCode : hashCode + this.scope.hashCode();
    }

    int readScopeWireFormat(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = bArr[i] & 255;
        if (i3 == 0) {
            this.scope = null;
            return 1;
        }
        try {
            StringBuffer stringBuffer = new StringBuffer(new String(bArr, i2, i3, OEM_ENCODING));
            int i4 = i2 + i3;
            while (true) {
                i2 = i4 + 1;
                int i5 = bArr[i4] & 255;
                if (i5 == 0) {
                    break;
                }
                stringBuffer.append('.').append(new String(bArr, i2, i5, OEM_ENCODING));
                i4 = i2 + i5;
            }
            this.scope = stringBuffer.toString();
        } catch (UnsupportedEncodingException e) {
        }
        return i2 - i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int readWireFormat(byte[] bArr, int i) {
        byte[] bArr2 = new byte[33];
        int i2 = 15;
        for (int i3 = 0; i3 < 15; i3++) {
            bArr2[i3] = (byte) (((bArr[((i3 * 2) + 1) + i] & 255) - 65) << 4);
            bArr2[i3] = (byte) (bArr2[i3] | ((byte) (((bArr[((i3 * 2) + 2) + i] & 255) - 65) & 15)));
            if (bArr2[i3] != 32) {
                i2 = i3 + 1;
            }
        }
        try {
            this.name = new String(bArr2, 0, i2, OEM_ENCODING);
        } catch (UnsupportedEncodingException e) {
        }
        this.hexCode = ((bArr[i + 31] & 255) - 65) << 4;
        this.hexCode |= ((bArr[(i + 31) + 1] & 255) - 65) & 15;
        return readScopeWireFormat(bArr, i + 33) + 33;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String str = this.name;
        if (str == null) {
            str = "null";
        } else if (str.charAt(0) == 1) {
            char[] charArray = str.toCharArray();
            charArray[0] = '.';
            charArray[1] = '.';
            charArray[14] = '.';
            str = new String(charArray);
        }
        stringBuffer.append(str).append("<").append(Hexdump.toHexString(this.hexCode, 2)).append(">");
        if (this.scope != null) {
            stringBuffer.append(".").append(this.scope);
        }
        return stringBuffer.toString();
    }

    int writeScopeWireFormat(byte[] bArr, int i) {
        if (this.scope == null) {
            bArr[i] = 0;
            return 1;
        }
        int i2 = i + 1;
        bArr[i] = 46;
        try {
            System.arraycopy(this.scope.getBytes(OEM_ENCODING), 0, bArr, i2, this.scope.length());
        } catch (UnsupportedEncodingException e) {
        }
        int length = i2 + this.scope.length();
        bArr[length] = 0;
        int i3 = (length + 1) - 2;
        int length2 = i3 - this.scope.length();
        int i4 = i3;
        int i5 = 0;
        while (true) {
            if (bArr[i4] == 46) {
                bArr[i4] = (byte) i5;
                i5 = 0;
            } else {
                i5++;
            }
            int i6 = i4 - 1;
            if (i4 <= length2) {
                return this.scope.length() + 2;
            }
            i4 = i6;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int writeWireFormat(byte[] bArr, int i) {
        bArr[i] = 32;
        try {
            byte[] bytes = this.name.getBytes(OEM_ENCODING);
            int i2 = 0;
            while (i2 < bytes.length) {
                bArr[(i2 * 2) + 1 + i] = (byte) (((bytes[i2] & 240) >> 4) + 65);
                bArr[(i2 * 2) + 2 + i] = (byte) ((bytes[i2] & 15) + 65);
                i2++;
            }
            while (i2 < 15) {
                bArr[(i2 * 2) + 1 + i] = 67;
                bArr[(i2 * 2) + 2 + i] = 65;
                i2++;
            }
            bArr[i + 31] = (byte) (((this.hexCode & 240) >> 4) + 65);
            bArr[i + 31 + 1] = (byte) ((this.hexCode & 15) + 65);
        } catch (UnsupportedEncodingException e) {
        }
        return writeScopeWireFormat(bArr, i + 33) + 33;
    }
}
