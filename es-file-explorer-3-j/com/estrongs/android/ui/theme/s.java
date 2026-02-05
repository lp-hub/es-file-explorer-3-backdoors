package com.estrongs.android.ui.theme;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.estrongs.android.ui.a.ci;

/* loaded from: classes.dex */
class s extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeActivity f2558a;

    /* renamed from: b, reason: collision with root package name */
    private String f2559b;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        ci ciVar;
        String action = intent.getAction();
        if (action.equals("android.intent.action.PACKAGE_ADDED") || action.equals("android.intent.action.INSTALL_PACKAGE")) {
            if (this.f2559b.equals(intent.getDataString().substring("package:".length()))) {
                ciVar = this.f2558a.c;
                ciVar.a(this.f2559b);
            }
        }
    }
}
