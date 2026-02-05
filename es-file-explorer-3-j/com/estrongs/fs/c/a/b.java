package com.estrongs.fs.c.a;

import com.estrongs.fs.g;

/* loaded from: classes.dex */
public class b extends f {
    public b(boolean z) {
        super(z);
    }

    @Override // com.estrongs.fs.c.a.f, java.util.Comparator
    /* renamed from: a */
    public int compare(g gVar, g gVar2) {
        if (!(gVar instanceof com.estrongs.fs.impl.b.c) || !(gVar2 instanceof com.estrongs.fs.impl.b.c)) {
            return super.compare(gVar, gVar2);
        }
        if (gVar == null || gVar2 == null || gVar.equals(gVar2)) {
            return 0;
        }
        int d = ((com.estrongs.fs.impl.b.c) gVar).d();
        int d2 = ((com.estrongs.fs.impl.b.c) gVar2).d();
        return d - d2 != 0 ? a(d, d2) : super.compare(gVar, gVar2);
    }
}
