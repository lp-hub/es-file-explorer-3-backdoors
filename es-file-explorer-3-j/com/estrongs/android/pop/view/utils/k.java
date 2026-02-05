package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import android.app.NotificationManager;
import com.estrongs.android.pop.C0000R;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1454a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ List f1455b;
    final /* synthetic */ List c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Activity activity, List list, List list2) {
        this.f1454a = activity;
        this.f1455b = list;
        this.c = list2;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        int intValue;
        synchronized (AppRunner.f1428a) {
            intValue = AppRunner.f1428a.intValue();
            Integer num = AppRunner.f1428a;
            AppRunner.f1428a = Integer.valueOf(AppRunner.f1428a.intValue() + 1);
        }
        NotificationManager notificationManager = (NotificationManager) this.f1454a.getSystemService("notification");
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < this.f1455b.size()) {
            String str = (String) this.f1455b.get(i);
            AppRunner.a(this.f1454a, ((Object) this.f1454a.getText(C0000R.string.apk_notify_uninstalling)) + "...", (String) this.c.get(i), intValue, true);
            if (str != null) {
                if (com.estrongs.fs.impl.local.h.l(str.replace(" ", "\\ ").replace("&", "\\&"))) {
                    i3++;
                } else {
                    i2++;
                }
            }
            i++;
            i3 = i3;
            i2 = i2;
        }
        notificationManager.cancel(intValue);
        this.f1454a.runOnUiThread(new l(this, this.f1455b.size() == 1 ? i3 == 1 ? ((String) this.c.get(0)) + " " + ((Object) this.f1454a.getText(C0000R.string.apk_notify_un_succ)) : ((String) this.c.get(0)) + " " + ((Object) this.f1454a.getText(C0000R.string.apk_notify_un_fail)) : i3 > 0 ? i2 == 0 ? "" + i3 + " " + ((Object) this.f1454a.getText(C0000R.string.apk_notify_un_num_succ)) : "" + i3 + " " + ((Object) this.f1454a.getText(C0000R.string.apk_notify_un_num_succ)) + ", " + i2 + " " + ((Object) this.f1454a.getText(C0000R.string.apk_notify_un_num_fail)) : "" + i2 + " " + ((Object) this.f1454a.getText(C0000R.string.apk_notify_un_num_fail))));
    }
}
