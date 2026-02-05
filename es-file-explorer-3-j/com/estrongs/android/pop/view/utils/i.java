package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import android.app.NotificationManager;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.util.ak;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class i extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1450a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ List f1451b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Activity activity, List list) {
        this.f1450a = activity;
        this.f1451b = list;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        int intValue;
        synchronized (AppRunner.f1428a) {
            intValue = AppRunner.f1428a.intValue();
            Integer num = AppRunner.f1428a;
            AppRunner.f1428a = Integer.valueOf(AppRunner.f1428a.intValue() + 1);
        }
        NotificationManager notificationManager = (NotificationManager) this.f1450a.getSystemService("notification");
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < this.f1451b.size(); i3++) {
            AppRunner.a(this.f1450a, ((Object) this.f1450a.getText(C0000R.string.apk_notify_installing)) + "...", ak.d((String) this.f1451b.get(i3)), intValue, true);
            String str = (String) this.f1451b.get(i3);
            if (str != null) {
                if (com.estrongs.fs.impl.local.h.b(str.replace(" ", "\\ ").replace("&", "\\&").replace("(", "\\(").replace(")", "\\)"), true)) {
                    i2++;
                } else {
                    i++;
                }
            }
        }
        notificationManager.cancel(intValue);
        this.f1450a.runOnUiThread(new j(this, this.f1451b.size() == 1 ? i2 == 1 ? ak.d((String) this.f1451b.get(0)) + " " + ((Object) this.f1450a.getText(C0000R.string.apk_notify_in_succ)) : ak.d((String) this.f1451b.get(0)) + " " + ((Object) this.f1450a.getText(C0000R.string.apk_notify_in_fail)) : i2 > 0 ? i == 0 ? "" + i2 + " " + ((Object) this.f1450a.getText(C0000R.string.apk_notify_in_num_succ)) : "" + i2 + " " + ((Object) this.f1450a.getText(C0000R.string.apk_notify_in_num_succ)) + ", " + i + " " + ((Object) this.f1450a.getText(C0000R.string.apk_notify_in_num_fail)) : "" + i + " " + ((Object) this.f1450a.getText(C0000R.string.apk_notify_in_num_fail))));
    }
}
