package com.estrongs.android.ui.view;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f2635a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(b bVar) {
        this.f2635a = bVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2635a.c();
    }
}
