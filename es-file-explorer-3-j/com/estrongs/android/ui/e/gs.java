package com.estrongs.android.ui.e;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gs implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.view.a.a f2171a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ gq f2172b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gs(gq gqVar, com.estrongs.android.view.a.a aVar) {
        this.f2172b = gqVar;
        this.f2171a = aVar;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f2171a.e();
        return true;
    }
}
