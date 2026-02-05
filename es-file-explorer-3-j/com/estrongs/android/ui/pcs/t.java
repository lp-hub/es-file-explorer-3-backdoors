package com.estrongs.android.ui.pcs;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f2379a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ d f2380b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(d dVar, boolean z) {
        this.f2380b = dVar;
        this.f2379a = z;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        d dVar = this.f2380b;
        boolean z = this.f2379a;
        str = this.f2380b.p;
        dVar.a(z, str);
    }
}
