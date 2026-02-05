package com.estrongs.fs.impl.media;

import com.estrongs.android.pop.utils.af;

/* loaded from: classes.dex */
final class f implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ af[] f3136a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String[] f3137b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(af[] afVarArr, String[] strArr) {
        this.f3136a = afVarArr;
        this.f3137b = strArr;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        for (int i = 0; i < this.f3136a.length; i++) {
            if (gVar.getPath().startsWith(this.f3137b[i])) {
                return false;
            }
        }
        return true;
    }
}
