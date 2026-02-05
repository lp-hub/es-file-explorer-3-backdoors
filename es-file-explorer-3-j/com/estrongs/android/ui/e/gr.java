package com.estrongs.android.ui.e;

import android.view.View;
import android.widget.Button;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gr implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Button f2169a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.view.a.a f2170b;
    final /* synthetic */ gq c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gr(gq gqVar, Button button, com.estrongs.android.view.a.a aVar) {
        this.c = gqVar;
        this.f2169a = button;
        this.f2170b = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!this.f2169a.isEnabled() || this.f2170b.c() == null) {
            return;
        }
        this.f2170b.c().onMenuItemClick(this.f2170b);
    }
}
