package com.estrongs.android.ui.theme;

import android.view.View;

/* loaded from: classes.dex */
class a implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ModifyThemeActivity f2515a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(ModifyThemeActivity modifyThemeActivity) {
        this.f2515a = modifyThemeActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2515a.finish();
    }
}
