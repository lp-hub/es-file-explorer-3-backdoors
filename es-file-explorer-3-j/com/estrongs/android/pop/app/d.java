package com.estrongs.android.pop.app;

import android.content.Context;
import android.view.View;

/* loaded from: classes.dex */
class d implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppCheckUpdateList f648a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(AppCheckUpdateList appCheckUpdateList) {
        this.f648a = appCheckUpdateList;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f648a.a((Context) this.f648a);
    }
}
