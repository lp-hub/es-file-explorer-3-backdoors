package com.estrongs.android.ui.e;

/* loaded from: classes.dex */
class bl implements com.estrongs.android.util.f {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.view.e f2009a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bk f2010b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bl(bk bkVar, com.estrongs.android.view.e eVar) {
        this.f2010b = bkVar;
        this.f2009a = eVar;
    }

    @Override // com.estrongs.android.util.f
    public void a(String str, String str2, int i) {
        if (this.f2009a.f2834b.equals(str)) {
            return;
        }
        this.f2009a.f2834b = str;
        this.f2009a.a(this.f2009a.f2833a);
    }
}
