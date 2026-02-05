package com.estrongs.android.ui.theme;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
class l extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeActivity f2549a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(ThemeActivity themeActivity) {
        this.f2549a = themeActivity;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        LinearLayout linearLayout;
        boolean z;
        this.f2549a.h = com.estrongs.android.util.ai.b(this.f2549a) || com.estrongs.android.util.ai.c(this.f2549a);
        linearLayout = this.f2549a.i;
        z = this.f2549a.h;
        linearLayout.setVisibility(z ? 8 : 0);
    }
}
