package com.estrongs.android.ui.e;

import android.app.Activity;
import android.widget.LinearLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bi extends bz {
    final /* synthetic */ w j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bi(w wVar, com.estrongs.android.ui.view.az azVar, Activity activity, boolean z, LinearLayout linearLayout) {
        super(azVar, activity, z, linearLayout);
        this.j = wVar;
    }

    @Override // com.estrongs.android.ui.e.c, com.estrongs.android.ui.e.a
    public boolean e() {
        this.j.m();
        return true;
    }
}
