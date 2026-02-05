package com.estrongs.android.pop;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements com.estrongs.android.a.o {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a.e f1157a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f1158b;
    final /* synthetic */ g c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(g gVar, com.estrongs.a.a.e eVar, com.estrongs.a.a aVar) {
        this.c = gVar;
        this.f1157a = eVar;
        this.f1158b = aVar;
    }

    @Override // com.estrongs.android.a.o
    public void a(int i, boolean z) {
        if (i == com.estrongs.android.a.i.f241a) {
            if (this.f1157a.f192b) {
                this.f1157a.g = 4;
            } else {
                this.f1157a.g = 1;
            }
        } else if (i == com.estrongs.android.a.i.f242b) {
            this.f1157a.g = 2;
        } else {
            this.f1157a.g = 5;
        }
        this.f1157a.f = z;
        this.f1158b.sendMessage(5, this.f1157a);
    }
}
