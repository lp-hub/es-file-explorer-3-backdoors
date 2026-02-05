package com.estrongs.android.ui.theme;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ab implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeFolderActivity f2517a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(ThemeFolderActivity themeFolderActivity) {
        this.f2517a = themeFolderActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f2517a.d();
    }
}
