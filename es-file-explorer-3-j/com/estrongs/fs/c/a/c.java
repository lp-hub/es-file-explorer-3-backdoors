package com.estrongs.fs.c.a;

import com.estrongs.fs.g;

/* loaded from: classes.dex */
public class c extends a {
    public c(boolean z) {
        super(z);
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(g gVar, g gVar2) {
        if (gVar == null || gVar == null) {
            return 0;
        }
        String b2 = b(gVar);
        String b3 = b(gVar2);
        boolean a2 = a(gVar);
        boolean a3 = a(gVar2);
        if (!(a2 && a3) && (a2 || a3)) {
            return (a2 || !a3) ? -1 : 1;
        }
        long lastModified = gVar.lastModified();
        long lastModified2 = gVar2.lastModified();
        return lastModified == lastModified2 ? a(b2, b3) : lastModified > lastModified2 ? this.f3038b * 1 : this.f3038b * (-1);
    }
}
