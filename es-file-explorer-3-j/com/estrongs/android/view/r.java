package com.estrongs.android.view;

import android.app.Activity;
import android.widget.CompoundButton;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class r implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ n f2850a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(n nVar) {
        this.f2850a = nVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        Activity activity;
        activity = this.f2850a.e;
        com.estrongs.android.pop.q.a(activity).e(z);
    }
}
