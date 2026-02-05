package com.estrongs.android.pop.utils;

import android.app.Activity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class an implements com.estrongs.android.ui.pcs.v {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1191a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1192b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public an(Activity activity, String str) {
        this.f1191a = activity;
        this.f1192b = str;
    }

    @Override // com.estrongs.android.ui.pcs.v
    public void a(boolean z, String str, String str2) {
        if (z && com.estrongs.android.util.aw.b((CharSequence) str2)) {
            aj.b(this.f1191a, this.f1192b);
        }
    }
}
