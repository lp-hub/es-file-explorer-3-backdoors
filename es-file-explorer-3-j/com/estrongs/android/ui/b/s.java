package com.estrongs.android.ui.b;

import android.widget.CompoundButton;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f1878a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ o f1879b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(o oVar, l lVar) {
        this.f1879b = oVar;
        this.f1878a = lVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            this.f1879b.f1870a.setChecked(false);
        } else {
            this.f1879b.f1870a.setChecked(true);
        }
    }
}
