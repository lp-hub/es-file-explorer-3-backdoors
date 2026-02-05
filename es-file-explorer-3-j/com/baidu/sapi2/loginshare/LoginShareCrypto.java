package com.baidu.sapi2.loginshare;

import android.content.Context;
import com.baidu.sapi2.share.NativeCrypto;

/* loaded from: classes.dex */
public class LoginShareCrypto {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String decrypt(Context context, String str) {
        try {
            return NativeCrypto.decrypt(context, str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String encrypt(Context context, String str) {
        try {
            return NativeCrypto.encrypt(context, str);
        } catch (Throwable th) {
            return null;
        }
    }
}
