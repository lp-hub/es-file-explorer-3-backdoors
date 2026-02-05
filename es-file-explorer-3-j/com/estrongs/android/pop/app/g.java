package com.estrongs.android.pop.app;

import android.view.View;

/* loaded from: classes.dex */
class g implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f833a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ f f834b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar, String str) {
        this.f834b = fVar;
        this.f833a = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        f fVar;
        f fVar2;
        com.estrongs.android.pop.q.c(this.f834b.f793a, this.f833a);
        fVar = this.f834b.f793a.f;
        fVar.a().remove(this.f833a);
        fVar2 = this.f834b.f793a.f;
        fVar2.notifyDataSetChanged();
    }
}
