package com.estrongs.android.pop.view;

import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1331a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1332b;
    final /* synthetic */ String c;
    final /* synthetic */ com.estrongs.android.view.ar d;
    final /* synthetic */ boolean e;
    final /* synthetic */ boolean f;
    final /* synthetic */ int g;
    final /* synthetic */ a h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, String str, String str2, String str3, com.estrongs.android.view.ar arVar, boolean z, boolean z2, int i) {
        this.h = aVar;
        this.f1331a = str;
        this.f1332b = str2;
        this.c = str3;
        this.d = arVar;
        this.e = z;
        this.f = z2;
        this.g = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f1331a == null && com.estrongs.android.util.ak.aS(this.f1332b)) {
            this.h.f1290b.B.setText("/");
        } else {
            this.h.f1290b.B.setText(this.f1331a);
        }
        if (this.h.f1290b.u && this.h.f1290b.A != null) {
            if (this.c != null) {
                this.h.f1290b.A.setVisibility(0);
                this.h.f1290b.A.setText(this.c);
                if (this.h.f1290b.C != null) {
                    this.h.f1290b.C.setNextFocusLeftId(C0000R.id.tool_up);
                }
            } else {
                this.h.f1290b.A.setVisibility(8);
                if (this.h.f1290b.C != null) {
                    this.h.f1290b.C.setNextFocusLeftId(C0000R.id.tool_fast_access);
                }
            }
        }
        if (this.d != null) {
            if (this.d.F() && ((!this.e || !com.estrongs.android.util.ak.aL(this.f1332b)) && (!this.e || !this.h.f1290b.e(this.f1332b)))) {
                this.h.f1290b.q = true;
                this.h.f1290b.f(false);
            }
            if (this.d.A() && this.f) {
                this.h.f1290b.l();
            }
        }
        this.h.f1290b.a(this.f1332b, this.g, this.d);
        this.h.f1290b.ab();
        this.h.f1290b.k.c(true);
        this.h.f1290b.k.j();
    }
}
