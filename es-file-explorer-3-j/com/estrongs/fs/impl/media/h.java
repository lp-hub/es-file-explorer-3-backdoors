package com.estrongs.fs.impl.media;

import com.estrongs.android.pop.utils.af;

/* loaded from: classes.dex */
class h implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ af[] f3138a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String[] f3139b;
    final /* synthetic */ e c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(e eVar, af[] afVarArr, String[] strArr) {
        this.c = eVar;
        this.f3138a = afVarArr;
        this.f3139b = strArr;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        for (int i = 0; i < this.f3138a.length; i++) {
            if (gVar.getPath().startsWith(this.f3139b[i])) {
                return false;
            }
        }
        return true;
    }
}
