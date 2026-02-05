package com.estrongs.android.ui.view;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class at implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopMultiWindowGrid f2617a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public at(PopMultiWindowGrid popMultiWindowGrid) {
        this.f2617a = popMultiWindowGrid;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        PopMultiWindowGrid popMultiWindowGrid = this.f2617a;
        i = this.f2617a.f;
        popMultiWindowGrid.a(1, i);
    }
}
