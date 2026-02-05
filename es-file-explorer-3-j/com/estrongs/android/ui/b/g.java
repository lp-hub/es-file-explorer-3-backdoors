package com.estrongs.android.ui.b;

import android.content.pm.ApplicationInfo;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f1844a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar) {
        this.f1844a = fVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean a2;
        List<ApplicationInfo> installedApplications = this.f1844a.mContext.getPackageManager().getInstalledApplications(8192);
        ArrayList arrayList = new ArrayList();
        for (ApplicationInfo applicationInfo : installedApplications) {
            a2 = this.f1844a.a(applicationInfo.packageName);
            if (!a2 && (applicationInfo.flags & 1) <= 0) {
                arrayList.add(applicationInfo);
            }
        }
        this.f1844a.f1807a.post(new h(this, arrayList));
    }
}
