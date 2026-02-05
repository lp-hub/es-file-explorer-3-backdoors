package com.estrongs.android.ui.c;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1917a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ q f1918b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(q qVar, String str) {
        this.f1918b = qVar;
        this.f1917a = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f1918b.a(this.f1917a);
    }
}
