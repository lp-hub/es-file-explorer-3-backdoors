package com.baidu.sapi2.security;

import android.text.TextUtils;
import java.io.ByteArrayInputStream;
import java.security.Key;
import java.security.PublicKey;
import java.util.Random;
import javax.crypto.Cipher;
import javax.security.cert.X509Certificate;
import org.json.JSONArray;

/* loaded from: classes.dex */
public class EncryptHelper {
    private String mKey;

    public EncryptHelper() {
        this.mKey = "kf1t9tsczk16vc8z";
        this.mKey = createAESKey();
    }

    private String createAESKey() {
        Random random = new Random();
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < 16; i++) {
            stringBuffer.append("abcdefghijklmnopqrstuvwxyz0123456789".charAt(random.nextInt("abcdefghijklmnopqrstuvwxyz0123456789".length())));
        }
        return stringBuffer.toString();
    }

    private byte[] encrypt(Key key, byte[] bArr) {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, key);
        return cipher.doFinal(bArr);
    }

    public String decrypt(String str) {
        return new String(AES.decrypt(Base64.decode(str), new StringBuffer(this.mKey).reverse().toString(), this.mKey), "UTF-8");
    }

    public String encrypt(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        PublicKey publicKey = X509Certificate.getInstance(new ByteArrayInputStream(str.getBytes())).getPublicKey();
        JSONArray jSONArray = new JSONArray();
        byte[] bytes = str2.getBytes("UTF-8");
        int length = bytes.length % 116 == 0 ? bytes.length / 116 : (bytes.length / 116) + 1;
        for (int i = 0; i < length; i++) {
            if (1 == length) {
                jSONArray.put(Base64.encode(encrypt(publicKey, bytes)));
            } else if (i != length - 1) {
                byte[] bArr = new byte[116];
                System.arraycopy(bytes, i * 116, bArr, 0, 116);
                jSONArray.put(Base64.encode(encrypt(publicKey, bArr)));
            } else {
                int length2 = bytes.length - (i * 116);
                byte[] bArr2 = new byte[length2];
                System.arraycopy(bytes, i * 116, bArr2, 0, length2);
                jSONArray.put(Base64.encode(encrypt(publicKey, bArr2)));
            }
        }
        return Base64.encode(jSONArray.toString().getBytes("UTF-8"));
    }

    public String getAESKey() {
        return this.mKey;
    }

    public void setAESKey(String str) {
        this.mKey = str;
    }
}
