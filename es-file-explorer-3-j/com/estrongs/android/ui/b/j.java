package com.estrongs.android.ui.b;

import android.content.pm.ApplicationInfo;
import android.view.View;

/* loaded from: classes.dex */
class j implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ApplicationInfo f1862a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1863b;
    final /* synthetic */ i c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(i iVar, ApplicationInfo applicationInfo, String str) {
        this.c = iVar;
        this.f1862a = applicationInfo;
        this.f1863b = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.pop.q.a(this.c.c.mContext, this.f1862a.packageName, this.f1863b);
        this.c.f1860a.remove(this.f1862a);
        this.c.notifyDataSetChanged();
    }
}
