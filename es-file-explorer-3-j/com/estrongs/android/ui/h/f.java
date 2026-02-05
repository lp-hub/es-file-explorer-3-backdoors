package com.estrongs.android.ui.h;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f2245a;

    /* renamed from: b, reason: collision with root package name */
    private Context f2246b;

    public f(c cVar, Context context) {
        this.f2245a = cVar;
        this.f2246b = context;
    }

    public void a() {
        try {
            this.f2246b.unregisterReceiver(this);
        } catch (Exception e) {
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String str;
        if (intent.getAction().equals("android.intent.action.PACKAGE_ADDED")) {
            String encodedSchemeSpecificPart = intent.getData().getEncodedSchemeSpecificPart();
            str = this.f2245a.c;
            if (str.equals(encodedSchemeSpecificPart)) {
                new g(this).start();
            }
        }
    }
}
