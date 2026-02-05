package com.estrongs.android.widget;

import com.estrongs.android.view.bs;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o implements bs {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f2930a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(g gVar) {
        this.f2930a = gVar;
    }

    @Override // com.estrongs.android.view.bs
    public void a() {
    }

    @Override // com.estrongs.android.view.bs
    public void b() {
        com.estrongs.android.view.ar arVar;
        if (this.f2930a.f2919b != null) {
            arVar = this.f2930a.j;
            arVar.f(this.f2930a.f2919b);
            this.f2930a.f2919b = null;
        }
    }
}
