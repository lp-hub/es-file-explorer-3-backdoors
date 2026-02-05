package com.estrongs.android.ui.pcs;

import android.widget.CompoundButton;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class z implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ x f2388a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(x xVar) {
        this.f2388a = xVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        this.f2388a.x = z;
    }
}
