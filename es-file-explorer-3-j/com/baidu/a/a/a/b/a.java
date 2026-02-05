package com.baidu.a.a.a.b;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static final String f121a = a.class.getSimpleName();

    public static String a(Context context) {
        String b2 = b(context);
        String b3 = b.b(context);
        if (TextUtils.isEmpty(b3)) {
            b3 = "0";
        }
        return b2 + "|" + new StringBuffer(b3).reverse().toString();
    }

    private static String b(Context context) {
        return b.a(context);
    }
}
