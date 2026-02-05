package com.estrongs.fs.c.a;

import com.estrongs.fs.g;

/* loaded from: classes.dex */
public class d extends a {
    public d(boolean z) {
        super(z);
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(g gVar, g gVar2) {
        String name = gVar.getName();
        String name2 = gVar2.getName();
        boolean a2 = a(gVar);
        boolean a3 = a(gVar2);
        return (a2 && a3) ? a(name, name2) : (a2 || a3) ? (a2 || !a3) ? -1 : 1 : a(name, name2);
    }
}
