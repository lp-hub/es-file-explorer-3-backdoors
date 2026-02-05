package com.estrongs.android.util;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import java.util.List;

/* loaded from: classes.dex */
public class ag {

    /* renamed from: a, reason: collision with root package name */
    private static List<ResolveInfo> f2665a = null;

    public static Intent a(String str, PackageManager packageManager) {
        for (ResolveInfo resolveInfo : a(packageManager, false)) {
            if (str.equals(resolveInfo.activityInfo.packageName)) {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.addCategory("android.intent.category.LAUNCHER");
                intent.setClassName(str, resolveInfo.activityInfo.name);
                return intent;
            }
        }
        return null;
    }

    public static synchronized List<ResolveInfo> a(PackageManager packageManager, boolean z) {
        List<ResolveInfo> list;
        synchronized (ag.class) {
            if (f2665a == null || z) {
                Intent intent = new Intent("android.intent.action.MAIN");
                intent.addCategory("android.intent.category.LAUNCHER");
                f2665a = packageManager.queryIntentActivities(intent, 0);
            }
            list = f2665a;
        }
        return list;
    }
}
