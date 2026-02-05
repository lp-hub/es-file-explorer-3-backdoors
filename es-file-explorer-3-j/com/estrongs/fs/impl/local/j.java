package com.estrongs.fs.impl.local;

import java.util.Comparator;

/* loaded from: classes.dex */
final class j implements Comparator<Object> {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = ((q) obj).f3114a - ((q) obj2).f3114a;
        if (i > 0) {
            return 1;
        }
        return i < 0 ? -1 : 0;
    }
}
