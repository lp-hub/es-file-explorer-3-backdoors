package com.estrongs.android.pop.app.compress;

import android.widget.CompoundButton;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class at implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ as f598a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public at(as asVar) {
        this.f598a = asVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f598a.c = z;
    }
}
