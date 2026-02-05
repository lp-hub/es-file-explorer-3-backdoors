package com.estrongs.android.pop.app;

import android.view.View;

/* loaded from: classes.dex */
class c implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppCheckUpdateList f553a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(AppCheckUpdateList appCheckUpdateList) {
        this.f553a = appCheckUpdateList;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        f fVar;
        f fVar2;
        com.estrongs.android.pop.q.d(this.f553a);
        fVar = this.f553a.f;
        fVar.a().clear();
        fVar2 = this.f553a.f;
        fVar2.notifyDataSetChanged();
    }
}
