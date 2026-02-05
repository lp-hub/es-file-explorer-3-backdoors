package com.estrongs.android.widget;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ai implements com.estrongs.android.view.br {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f2889a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(ah ahVar) {
        this.f2889a = ahVar;
    }

    @Override // com.estrongs.android.view.br
    public void a(String str, boolean z) {
        a(str, z, true);
    }

    @Override // com.estrongs.android.view.br
    public void a(String str, boolean z, boolean z2) {
        if (this.f2889a.m != null) {
            if (this.f2889a.b().n()) {
                this.f2889a.m.setVisibility(8);
                this.f2889a.b().a(false);
            } else {
                this.f2889a.m.setVisibility(0);
                this.f2889a.b().a(true);
            }
        }
    }
}
