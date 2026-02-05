package com.estrongs.android.ui.b;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class db implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f1727a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ cz f1728b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public db(cz czVar, int i) {
        this.f1728b = czVar;
        this.f1727a = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        dc dcVar;
        dc dcVar2;
        dcVar = this.f1728b.d;
        if (dcVar != null) {
            dcVar2 = this.f1728b.d;
            dcVar2.a(this.f1727a);
        }
    }
}
