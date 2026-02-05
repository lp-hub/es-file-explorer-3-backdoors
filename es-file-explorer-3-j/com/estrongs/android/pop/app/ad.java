package com.estrongs.android.pop.app;

import android.app.Activity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ad implements com.estrongs.android.ui.pcs.v {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f442a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f443b;
    final /* synthetic */ ESFileSharingActivity c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(ESFileSharingActivity eSFileSharingActivity, Activity activity, String str) {
        this.c = eSFileSharingActivity;
        this.f442a = activity;
        this.f443b = str;
    }

    @Override // com.estrongs.android.ui.pcs.v
    public void a(boolean z, String str, String str2) {
        if (!z || str2 == null) {
            this.c.finish();
        } else {
            com.estrongs.android.pop.utils.aj.a(this.f442a, this.f443b, new ae(this));
            this.c.f342a = false;
        }
    }
}
