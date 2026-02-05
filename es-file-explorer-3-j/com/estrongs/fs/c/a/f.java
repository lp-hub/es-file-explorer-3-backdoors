package com.estrongs.fs.c.a;

import com.estrongs.android.util.ak;
import com.estrongs.fs.g;

/* loaded from: classes.dex */
public class f extends a {
    public f(boolean z) {
        super(z);
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(g gVar, g gVar2) {
        int i;
        String b2 = b(gVar);
        String b3 = b(gVar2);
        String absolutePath = gVar.getAbsolutePath();
        String absolutePath2 = gVar2.getAbsolutePath();
        String str = b2 != null ? b2 : "";
        if (b3 == null) {
            b3 = "";
        }
        boolean aP = ak.aP(absolutePath);
        boolean aP2 = ak.aP(absolutePath2);
        if (aP && aP2) {
            int E = ak.E(absolutePath);
            int E2 = ak.E(absolutePath2);
            String a2 = ak.a(absolutePath, E);
            String a3 = ak.a(absolutePath2, E2);
            if (a2 != null && a3 != null && a2.equals("/") && a3.equals("/")) {
                if (E == E2) {
                    i = E == 4 ? a(ak.ae(absolutePath), ak.ae(absolutePath2)) : -1;
                    if (E != 4 || i == 0) {
                        i = a(ak.c(absolutePath), ak.c(absolutePath2));
                    }
                } else {
                    i = (E - E2) * this.f3038b;
                }
                if (i == 0) {
                    return -1;
                }
                return i;
            }
        }
        boolean a4 = a(gVar);
        boolean a5 = a(gVar2);
        if (a4 && a5) {
            return a(str, b3);
        }
        if (a4 || a5) {
            return (a4 || !a5) ? -1 : 1;
        }
        int lastIndexOf = str.lastIndexOf(46);
        String substring = lastIndexOf != -1 ? str.substring(lastIndexOf) : null;
        int lastIndexOf2 = b3.lastIndexOf(46);
        String substring2 = lastIndexOf2 != -1 ? b3.substring(lastIndexOf2) : null;
        return (substring == null || substring2 == null) ? (substring == null || substring2 != null) ? (substring != null || substring2 == null) ? a(str, b3) : this.f3038b * (-1) : this.f3038b * 1 : substring.equals(substring2) ? a(str, b3) : a(substring, substring2);
    }
}
