package com.estrongs.android.ui.g;

import android.view.View;

/* loaded from: classes.dex */
class h implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f2228a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(f fVar) {
        this.f2228a = fVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2228a.dismiss();
        this.f2228a.a();
    }
}
