package com.estrongs.android.ui.view;

import android.view.View;

/* loaded from: classes.dex */
class r implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CreateOAuthServiceProvider f2646a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(CreateOAuthServiceProvider createOAuthServiceProvider) {
        this.f2646a = createOAuthServiceProvider;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2646a.finish();
    }
}
