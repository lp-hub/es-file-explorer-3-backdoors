package com.estrongs.android.view;

import android.widget.BaseAdapter;
import java.util.List;

/* loaded from: classes.dex */
class t extends x {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f2853a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ boolean f2854b;
    final /* synthetic */ n c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(n nVar, n nVar2, List list, boolean z, List list2, boolean z2) {
        super(nVar2, list, z);
        this.c = nVar;
        this.f2853a = list2;
        this.f2854b = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.e.b(this);
    }

    @Override // com.estrongs.android.view.x
    protected BaseAdapter b() {
        return new u(this);
    }
}
