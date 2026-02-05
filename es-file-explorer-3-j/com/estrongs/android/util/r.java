package com.estrongs.android.util;

import java.io.File;
import java.util.Comparator;

/* loaded from: classes.dex */
final class r implements Comparator<File> {
    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(File file, File file2) {
        String b2;
        String b3;
        b2 = q.b(file.getName(), file.isDirectory(), true);
        b3 = q.b(file2.getName(), file2.isDirectory(), true);
        return b2.compareToIgnoreCase(b3);
    }
}
