package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.view.View;

/* loaded from: classes.dex */
class r implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeActivity f2557a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(ThemeActivity themeActivity) {
        this.f2557a = themeActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Intent intent = new Intent("android.settings.WIFI_SETTINGS");
        intent.setFlags(268435456);
        this.f2557a.startActivity(intent);
    }
}
