package com.estrongs.android.ui.view;

import android.app.Activity;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f2632a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(b bVar) {
        this.f2632a = bVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Activity activity;
        int i;
        activity = this.f2632a.ad;
        i = this.f2632a.D;
        new com.estrongs.android.util.b(activity, i, new f(this)).a();
    }
}
