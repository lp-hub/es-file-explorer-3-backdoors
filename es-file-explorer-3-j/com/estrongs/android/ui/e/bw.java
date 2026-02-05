package com.estrongs.android.ui.e;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bw implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bv f2023a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bw(bv bvVar) {
        this.f2023a = bvVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        int intValue = ((Integer) view.getTag()).intValue();
        com.estrongs.android.view.a.a b2 = this.f2023a.b(intValue);
        b2.f();
        bv bvVar = this.f2023a;
        i = this.f2023a.c;
        bvVar.a(intValue + i, b2);
    }
}
