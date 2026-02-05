package com.estrongs.android.ui.h;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f2251a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(h hVar) {
        this.f2251a = hVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z;
        z = this.f2251a.l;
        if (z) {
            this.f2251a.e();
        } else {
            this.f2251a.d();
        }
    }
}
