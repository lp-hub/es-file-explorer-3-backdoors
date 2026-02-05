package com.estrongs.android.view;

import android.view.View;
import android.widget.CheckBox;

/* loaded from: classes.dex */
class s implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CheckBox f2851a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ n f2852b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(n nVar, CheckBox checkBox) {
        this.f2852b = nVar;
        this.f2851a = checkBox;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.f2851a.isChecked()) {
            this.f2851a.setChecked(false);
        } else {
            this.f2851a.setChecked(true);
        }
    }
}
