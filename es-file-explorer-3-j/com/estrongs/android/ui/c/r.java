package com.estrongs.android.ui.c;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class r implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1915a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ q f1916b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(q qVar, String str) {
        this.f1916b = qVar;
        this.f1915a = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1916b.a(this.f1915a);
    }
}
