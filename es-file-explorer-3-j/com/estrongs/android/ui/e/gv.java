package com.estrongs.android.ui.e;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gv implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ gu f2176a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gv(gu guVar) {
        this.f2176a = guVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        int intValue = ((Integer) view.getTag()).intValue();
        com.estrongs.android.view.a.a b2 = this.f2176a.b(intValue);
        if (b2 != null) {
            b2.f();
            gu guVar = this.f2176a;
            i = this.f2176a.d;
            guVar.a(intValue + i, b2);
        }
    }
}
