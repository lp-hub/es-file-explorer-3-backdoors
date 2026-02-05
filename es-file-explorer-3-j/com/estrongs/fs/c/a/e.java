package com.estrongs.fs.c.a;

import com.estrongs.fs.g;

/* loaded from: classes.dex */
public class e extends a {
    public e(boolean z) {
        super(z);
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(g gVar, g gVar2) {
        String b2 = b(gVar);
        String b3 = b(gVar2);
        boolean a2 = a(gVar);
        boolean a3 = a(gVar2);
        if (a2 && a3) {
            return a(b2, b3);
        }
        if (a2 || a3) {
            return (a2 || !a3) ? -1 : 1;
        }
        long length = gVar.length();
        long length2 = gVar2.length();
        return length == length2 ? a(b2, b3) : length > length2 ? this.f3038b * 1 : this.f3038b * (-1);
    }
}
