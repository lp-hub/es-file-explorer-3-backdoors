package com.estrongs.android.ui.theme;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeColorActivity f2560a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(ThemeColorActivity themeColorActivity) {
        this.f2560a = themeColorActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2560a.d();
    }
}
