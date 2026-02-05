package com.estrongs.android.f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f302a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(h hVar) {
        this.f302a = hVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.f302a.a(intent);
    }
}
