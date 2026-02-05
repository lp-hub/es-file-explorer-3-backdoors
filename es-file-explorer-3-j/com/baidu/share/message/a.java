package com.baidu.share.message;

import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static a f178a = null;

    /* renamed from: b, reason: collision with root package name */
    private Cipher f179b;
    private Cipher c;

    private a(String str) {
        this.f179b = null;
        this.c = null;
        Key d = d(str.getBytes());
        this.f179b = Cipher.getInstance("DES/ECB/PKCS5Padding");
        this.f179b.init(1, d);
        this.c = Cipher.getInstance("DES");
        this.c.init(2, d);
    }

    public static a a() {
        if (f178a == null) {
            try {
                f178a = new a("baidu.PCS_SHARE.INTERNAL");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return f178a;
    }

    public static String a(String str) {
        a a2 = a();
        if (a2 == null) {
            return str;
        }
        try {
            return a2.d(str);
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public static String a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (int i : bArr) {
            while (i < 0) {
                i += 256;
            }
            if (i < 16) {
                stringBuffer.append("0");
            }
            stringBuffer.append(Integer.toString(i, 16));
        }
        return stringBuffer.toString();
    }

    public static String b(String str) {
        a a2 = a();
        if (a2 == null) {
            return str;
        }
        try {
            return a2.e(str);
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    public static byte[] c(String str) {
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) Integer.parseInt(new String(bytes, i, 2), 16);
        }
        return bArr;
    }

    private Key d(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        for (int i = 0; i < bArr.length && i < bArr2.length; i++) {
            bArr2[i] = bArr[i];
        }
        return new SecretKeySpec(bArr2, "DES");
    }

    public byte[] b(byte[] bArr) {
        return this.f179b.doFinal(bArr);
    }

    public byte[] c(byte[] bArr) {
        return this.c.doFinal(bArr);
    }

    public String d(String str) {
        return a(b(str.getBytes()));
    }

    public String e(String str) {
        return new String(c(c(str)));
    }
}
