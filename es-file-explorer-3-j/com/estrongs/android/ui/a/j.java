package com.estrongs.android.ui.a;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ m f1588a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ i f1589b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(i iVar, m mVar) {
        this.f1589b = iVar;
        this.f1588a = mVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Handler handler;
        PackageManager packageManager;
        PackageManager packageManager2;
        PackageManager packageManager3;
        if (this.f1588a.c.startsWith("start_app")) {
            String[] split = this.f1588a.c.substring("start_app".length()).split("#");
            try {
                packageManager = this.f1589b.g;
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(split[0], split[1]), 1);
                m mVar = this.f1588a;
                packageManager2 = this.f1589b.g;
                mVar.f1592a = activityInfo.loadIcon(packageManager2);
                m mVar2 = this.f1588a;
                packageManager3 = this.f1589b.g;
                mVar2.f1593b = activityInfo.loadLabel(packageManager3).toString();
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
            handler = this.f1589b.f1587b;
            handler.post(new k(this));
        }
    }
}
