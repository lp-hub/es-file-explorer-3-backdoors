package com.estrongs.android.view;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class z implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ x f2861a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(x xVar) {
        this.f2861a = xVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        try {
            this.f2861a.d.clear();
            this.f2861a.e.b(this.f2861a);
        } catch (IndexOutOfBoundsException e) {
        }
    }
}
