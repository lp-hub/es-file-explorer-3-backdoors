package com.jcraft.jsch;

import com.estrongs.android.pop.spfs.OAuthConstants;
import de.aflx.sardine.util.SardineUtil;
import java.io.UnsupportedEncodingException;
import java.net.Socket;
import java.util.Vector;

/* loaded from: classes.dex */
class Util {

    /* renamed from: b, reason: collision with root package name */
    private static final byte[] f3354b = b("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=");
    private static String[] c = {"0", "1", OAuthConstants.VERSION_2, "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "e", "f"};

    /* renamed from: a, reason: collision with root package name */
    static final byte[] f3353a = b("");

    Util() {
    }

    private static byte a(byte b2) {
        if (b2 == 61) {
            return (byte) 0;
        }
        for (int i = 0; i < f3354b.length; i++) {
            if (b2 == f3354b[i]) {
                return (byte) i;
            }
        }
        return (byte) 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(HASH hash, byte[] bArr) {
        try {
            hash.a();
            hash.a(bArr, 0, bArr.length);
            byte[] c2 = hash.c();
            StringBuffer stringBuffer = new StringBuffer();
            for (int i = 0; i < c2.length; i++) {
                int i2 = c2[i] & 255;
                stringBuffer.append(c[(i2 >>> 4) & 15]);
                stringBuffer.append(c[i2 & 15]);
                if (i + 1 < c2.length) {
                    stringBuffer.append(":");
                }
            }
            return stringBuffer.toString();
        } catch (Exception e) {
            return "???";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        byte[] b2 = b(str);
        byte[] a2 = a(b2);
        return b2.length == a2.length ? str : b(a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, String[] strArr) {
        String[] a2 = a(str, ",");
        String str2 = null;
        for (int i = 0; i < a2.length; i++) {
            int i2 = 0;
            while (true) {
                if (i2 >= strArr.length) {
                    str2 = str2 == null ? a2[i] : String.valueOf(str2) + "," + a2[i];
                } else if (!a2[i].equals(strArr[i2])) {
                    i2++;
                }
            }
        }
        return str2;
    }

    static String a(byte[] bArr, int i, int i2, String str) {
        try {
            return new String(bArr, i, i2, str);
        } catch (UnsupportedEncodingException e) {
            return new String(bArr, i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(byte[] bArr, String str) {
        return a(bArr, 0, bArr.length, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Socket a(final String str, final int i, int i2) {
        if (i2 == 0) {
            try {
                return new Socket(str, i);
            } catch (Exception e) {
                String exc = e.toString();
                if (e instanceof Throwable) {
                    throw new JSchException(exc, e);
                }
                throw new JSchException(exc);
            }
        }
        final Socket[] socketArr = new Socket[1];
        final Exception[] excArr = new Exception[1];
        String str2 = "";
        Thread thread = new Thread(new Runnable() { // from class: com.jcraft.jsch.Util.1
            @Override // java.lang.Runnable
            public void run() {
                socketArr[0] = null;
                try {
                    socketArr[0] = new Socket(str, i);
                } catch (Exception e2) {
                    excArr[0] = e2;
                    if (socketArr[0] != null && socketArr[0].isConnected()) {
                        try {
                            socketArr[0].close();
                        } catch (Exception e3) {
                        }
                    }
                    socketArr[0] = null;
                }
            }
        });
        thread.setName("Opening Socket " + str);
        thread.start();
        try {
            thread.join(i2);
            str2 = "timeout: ";
        } catch (InterruptedException e2) {
        }
        if (socketArr[0] != null && socketArr[0].isConnected()) {
            return socketArr[0];
        }
        String str3 = String.valueOf(str2) + "socket is not established";
        if (excArr[0] != null) {
            str3 = excArr[0].toString();
        }
        thread.interrupt();
        throw new JSchException(str3);
    }

    private static boolean a(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (bArr2.length <= 0 || bArr2[0] != 46) {
            return b(bArr, i, bArr2, i2);
        }
        if (bArr.length <= 0 || bArr[0] != 46) {
            return false;
        }
        if (bArr.length == 2 && bArr[1] == 42) {
            return true;
        }
        return b(bArr, i + 1, bArr2, i2 + 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(byte[] bArr, byte[] bArr2) {
        return a(bArr, 0, bArr2, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] a(byte[] bArr) {
        int length = bArr.length;
        int i = 0;
        while (i < length) {
            if (bArr[i] != 92) {
                i++;
            } else {
                if (i + 1 == length) {
                    break;
                }
                System.arraycopy(bArr, i + 1, bArr, i, bArr.length - (i + 1));
                length--;
                i++;
            }
        }
        if (length == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        int i3 = i;
        int i4 = 0;
        while (true) {
            if (i3 >= i + i2) {
                break;
            }
            bArr2[i4] = (byte) ((a(bArr[i3]) << 2) | ((a(bArr[i3 + 1]) & 48) >>> 4));
            if (bArr[i3 + 2] == 61) {
                i4++;
                break;
            }
            bArr2[i4 + 1] = (byte) (((a(bArr[i3 + 1]) & 15) << 4) | ((a(bArr[i3 + 2]) & 60) >>> 2));
            if (bArr[i3 + 3] == 61) {
                i4 += 2;
                break;
            }
            bArr2[i4 + 2] = (byte) (((a(bArr[i3 + 2]) & 3) << 6) | (a(bArr[i3 + 3]) & 63));
            i3 += 4;
            i4 += 3;
        }
        byte[] bArr3 = new byte[i4];
        System.arraycopy(bArr2, 0, bArr3, 0, i4);
        return bArr3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String[] a(String str, String str2) {
        if (str == null) {
            return null;
        }
        byte[] b2 = b(str);
        Vector vector = new Vector();
        int i = 0;
        while (true) {
            int indexOf = str.indexOf(str2, i);
            if (indexOf < 0) {
                break;
            }
            vector.addElement(c(b2, i, indexOf - i));
            i = indexOf + 1;
        }
        vector.addElement(c(b2, i, b2.length - i));
        String[] strArr = new String[vector.size()];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            strArr[i2] = (String) vector.elementAt(i2);
        }
        return strArr;
    }

    private static int b(byte b2) {
        if (((byte) (b2 & 128)) == 0) {
            return 1;
        }
        if (((byte) (b2 & 224)) == -64) {
            return 2;
        }
        return ((byte) (b2 & 240)) == -32 ? 3 : 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(byte[] bArr) {
        return a(bArr, 0, bArr.length, "UTF-8");
    }

    private static boolean b(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3;
        int i4;
        int length = bArr.length;
        if (length == 0) {
            return false;
        }
        int length2 = bArr2.length;
        int i5 = i2;
        int i6 = i;
        while (i6 < length && i5 < length2) {
            if (bArr[i6] == 92) {
                if (i6 + 1 == length) {
                    return false;
                }
                int i7 = i6 + 1;
                if (bArr[i7] != bArr2[i5]) {
                    return false;
                }
                i6 = i7 + b(bArr[i7]);
                i5 += b(bArr2[i5]);
            } else {
                if (bArr[i6] == 42) {
                    while (i6 < length && bArr[i6] == 42) {
                        i6++;
                    }
                    if (length == i6) {
                        return true;
                    }
                    byte b2 = bArr[i6];
                    if (b2 == 63) {
                        while (i5 < length2) {
                            if (b(bArr, i6, bArr2, i5)) {
                                return true;
                            }
                            i5 += b(bArr2[i5]);
                        }
                        return false;
                    }
                    if (b2 != 92) {
                        while (i5 < length2) {
                            if (b2 == bArr2[i5] && b(bArr, i6, bArr2, i5)) {
                                return true;
                            }
                            i5 += b(bArr2[i5]);
                        }
                        return false;
                    }
                    if (i6 + 1 == length) {
                        return false;
                    }
                    int i8 = i6 + 1;
                    byte b3 = bArr[i8];
                    while (i5 < length2) {
                        if (b3 == bArr2[i5] && b(bArr, b(b3) + i8, bArr2, b(bArr2[i5]) + i5)) {
                            return true;
                        }
                        i5 += b(bArr2[i5]);
                    }
                    return false;
                }
                if (bArr[i6] == 63) {
                    i6++;
                    i5 += b(bArr2[i5]);
                } else {
                    if (bArr[i6] != bArr2[i5]) {
                        return false;
                    }
                    i6 += b(bArr[i6]);
                    i5 += b(bArr2[i5]);
                    if (i5 < length2) {
                        continue;
                    } else {
                        if (i6 >= length) {
                            return true;
                        }
                        if (bArr[i6] == 42) {
                            i3 = i6;
                            i4 = i5;
                            break;
                        }
                    }
                }
            }
        }
        int i9 = i5;
        i3 = i6;
        i4 = i9;
        if (i3 == length && i4 == length2) {
            return true;
        }
        if (i4 < length2 || bArr[i3] != 42) {
            return false;
        }
        while (i3 < length) {
            int i10 = i3 + 1;
            if (bArr[i3] != 42) {
                return false;
            }
            i3 = i10;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] b(String str) {
        return b(str, "UTF-8");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] b(String str, String str2) {
        if (str == null) {
            return null;
        }
        try {
            return str.getBytes(str2);
        } catch (UnsupportedEncodingException e) {
            return str.getBytes();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] b(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2 * 2];
        int i3 = ((i2 / 3) * 3) + i;
        int i4 = i;
        int i5 = 0;
        while (i4 < i3) {
            int i6 = i5 + 1;
            bArr2[i5] = f3354b[(bArr[i4] >>> 2) & 63];
            int i7 = i6 + 1;
            bArr2[i6] = f3354b[((bArr[i4] & 3) << 4) | ((bArr[i4 + 1] >>> 4) & 15)];
            int i8 = i7 + 1;
            bArr2[i7] = f3354b[((bArr[i4 + 1] & 15) << 2) | ((bArr[i4 + 2] >>> 6) & 3)];
            bArr2[i8] = f3354b[bArr[i4 + 2] & 63];
            i4 += 3;
            i5 = i8 + 1;
        }
        int i9 = (i + i2) - i3;
        if (i9 == 1) {
            int i10 = i5 + 1;
            bArr2[i5] = f3354b[(bArr[i4] >>> 2) & 63];
            int i11 = ((bArr[i4] & 3) << 4) & 63;
            int i12 = i10 + 1;
            bArr2[i10] = f3354b[i11];
            int i13 = i12 + 1;
            bArr2[i12] = 61;
            i5 = i13 + 1;
            bArr2[i13] = 61;
        } else if (i9 == 2) {
            int i14 = i5 + 1;
            bArr2[i5] = f3354b[(bArr[i4] >>> 2) & 63];
            int i15 = i14 + 1;
            bArr2[i14] = f3354b[((bArr[i4] & 3) << 4) | ((bArr[i4 + 1] >>> 4) & 15)];
            int i16 = ((bArr[i4 + 1] & 15) << 2) & 63;
            int i17 = i15 + 1;
            bArr2[i15] = f3354b[i16];
            i5 = i17 + 1;
            bArr2[i17] = 61;
        }
        byte[] bArr3 = new byte[i5];
        System.arraycopy(bArr2, 0, bArr3, 0, i5);
        return bArr3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(byte[] bArr, int i, int i2) {
        return a(bArr, i, i2, "UTF-8");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(byte[] bArr) {
        if (bArr == null) {
            return;
        }
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = 0;
        }
    }
}
