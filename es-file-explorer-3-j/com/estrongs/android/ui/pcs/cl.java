package com.estrongs.android.ui.pcs;

import android.content.Context;

/* loaded from: classes.dex */
public class cl {
    public static String a(Context context, String str) {
        String h;
        if (str == null || (h = com.estrongs.fs.impl.i.b.h("pcs", str)) == null) {
            return null;
        }
        return h + ":fake";
    }

    public static boolean a(Context context) {
        return com.estrongs.android.pop.utils.bs.a();
    }
}
