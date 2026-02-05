package com.estrongs.android.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class o {
    public static void a(Context context) {
        a(context, "contact@estrongs.com", null, null);
    }

    public static void a(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setType("text/plain");
        intent.setAction("android.intent.action.SENDTO");
        intent.setData(Uri.fromParts("mailto", str, null));
        try {
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
            com.estrongs.android.ui.view.z.a(context, context.getString(C0000R.string.can_not_startup_email_app), 1).show();
        }
    }
}
