package com.estrongs.android.ui.b;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cy implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f1720a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ cx f1721b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cy(cx cxVar, int i) {
        this.f1721b = cxVar;
        this.f1720a = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        dc dcVar;
        dc dcVar2;
        dcVar = this.f1721b.f1719b;
        if (dcVar != null) {
            dcVar2 = this.f1721b.f1719b;
            dcVar2.a(this.f1720a);
        }
    }
}
