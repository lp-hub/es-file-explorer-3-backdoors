package com.estrongs.android.pop;

/* loaded from: classes.dex */
class j implements com.estrongs.android.a.s {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a.g f1153a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ h f1154b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(h hVar, com.estrongs.a.a.g gVar) {
        this.f1154b = hVar;
        this.f1153a = gVar;
    }

    @Override // com.estrongs.android.a.s
    public void a(int i, boolean z) {
        this.f1153a.g = i;
        this.f1153a.f = z;
        this.f1154b.f1151b.sendMessage(5, this.f1154b.f1150a);
    }
}
