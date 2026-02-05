package com.estrongs.android.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ac extends com.estrongs.android.d.i {

    /* renamed from: b, reason: collision with root package name */
    int f2727b;
    final /* synthetic */ x c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ac(x xVar, String str) {
        super(str);
        this.c = xVar;
        this.f2727b = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.d.i
    public boolean a(com.estrongs.android.d.k kVar) {
        boolean d = this.c.e.d();
        if (!d) {
            a();
            this.c.f = null;
        }
        return d;
    }

    @Override // com.estrongs.android.d.i
    public boolean b(com.estrongs.android.d.k kVar) {
        if (a(kVar)) {
            this.f2727b++;
            this.c.ad.runOnUiThread(new ad(this, kVar));
        }
        if (kVar.f285a) {
            com.estrongs.android.d.d.a(com.estrongs.android.d.d.f(kVar.c), kVar.e, false);
        }
        if (this.f2727b == this.c.i.getCount()) {
            a();
            this.c.f = null;
        }
        return false;
    }
}
