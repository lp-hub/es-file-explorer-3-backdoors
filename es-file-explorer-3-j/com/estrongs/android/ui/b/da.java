package com.estrongs.android.ui.b;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class da implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f1725a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ cz f1726b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public da(cz czVar, int i) {
        this.f1726b = czVar;
        this.f1725a = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        dd ddVar;
        dd ddVar2;
        ddVar = this.f1726b.c;
        if (ddVar != null) {
            ddVar2 = this.f1726b.c;
            ddVar2.a(this.f1725a);
        }
    }
}
