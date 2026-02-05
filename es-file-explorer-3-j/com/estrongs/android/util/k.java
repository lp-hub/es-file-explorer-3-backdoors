package com.estrongs.android.util;

import java.security.Key;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private static String f2702a = "estrongs";

    /* renamed from: b, reason: collision with root package name */
    private Cipher f2703b;
    private Cipher c;

    public k() {
        this(f2702a);
    }

    public k(String str) {
        this.f2703b = null;
        this.c = null;
        Key d = d(str.getBytes());
        this.f2703b = Cipher.getInstance("DES/ECB/PKCS5Padding");
        this.f2703b.init(1, d);
        this.c = Cipher.getInstance("DES");
        this.c.init(2, d);
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

    public static byte[] a(String str) {
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

    public String b(String str) {
        return a(b(str.getBytes()));
    }

    public byte[] b(byte[] bArr) {
        return this.f2703b.doFinal(bArr);
    }

    public String c(String str) {
        return new String(c(a(str)));
    }

    public byte[] c(byte[] bArr) {
        return this.c.doFinal(bArr);
    }
}
