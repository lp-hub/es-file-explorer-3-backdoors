package com.estrongs.android.ui.theme;

import android.view.View;

/* loaded from: classes.dex */
class m implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeActivity f2550a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(ThemeActivity themeActivity) {
        this.f2550a = themeActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2550a.finish();
    }
}
