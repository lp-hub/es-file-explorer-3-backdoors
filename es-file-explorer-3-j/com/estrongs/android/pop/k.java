package com.estrongs.android.pop;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k implements com.estrongs.android.a.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a.e f1155a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f1156b;
    final /* synthetic */ g c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(g gVar, com.estrongs.a.a.e eVar, com.estrongs.a.a aVar) {
        this.c = gVar;
        this.f1155a = eVar;
        this.f1156b = aVar;
    }

    @Override // com.estrongs.android.a.h
    public void a(boolean z, boolean z2) {
        if (!z) {
            this.f1155a.g = 2;
        } else if (this.f1155a.f192b) {
            this.f1155a.g = 4;
        } else {
            this.f1155a.g = 1;
        }
        this.f1155a.f = z2;
        this.f1156b.sendMessage(5, this.f1155a);
    }
}
