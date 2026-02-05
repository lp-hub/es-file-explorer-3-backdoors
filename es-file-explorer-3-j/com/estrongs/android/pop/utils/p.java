package com.estrongs.android.pop.utils;

import java.util.List;

/* loaded from: classes.dex */
class p extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f1271a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1272b;
    final /* synthetic */ com.estrongs.fs.impl.b.c c;
    final /* synthetic */ o d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(o oVar, List list, String str, com.estrongs.fs.impl.b.c cVar) {
        this.d = oVar;
        this.f1271a = list;
        this.f1272b = str;
        this.c = cVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        boolean a2;
        a2 = this.d.f1270b.a((List<String[]>) this.f1271a, this.f1272b);
        if (a2) {
            new com.estrongs.fs.b.o(com.estrongs.fs.d.a(this.d.f1270b.f1251a), (com.estrongs.fs.g) this.c, false).execute(false);
            return;
        }
        String[] b2 = com.estrongs.fs.impl.local.h.b(this.f1272b, "rw");
        if (b2 != null) {
            new com.estrongs.fs.b.o(com.estrongs.fs.d.a(this.d.f1270b.f1251a), (com.estrongs.fs.g) this.c, false).execute(false);
            this.f1271a.add(b2);
        }
    }
}
