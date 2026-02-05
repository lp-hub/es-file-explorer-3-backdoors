package com.estrongs.fs.impl.media;

import com.estrongs.android.pop.utils.af;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ af[] f3131a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String[] f3132b;
    final /* synthetic */ b c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar, af[] afVarArr, String[] strArr) {
        this.c = bVar;
        this.f3131a = afVarArr;
        this.f3132b = strArr;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        for (int i = 0; i < this.f3131a.length; i++) {
            if (gVar.getPath().startsWith(this.f3132b[i])) {
                return false;
            }
        }
        return true;
    }
}
