package com.estrongs.android.util;

import java.io.File;
import java.util.Comparator;

/* loaded from: classes.dex */
public abstract class s implements Comparator<File> {

    /* renamed from: a, reason: collision with root package name */
    private boolean f2710a = true;

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(File file, File file2) {
        String b2;
        String b3;
        b2 = q.b(a(file), file.isDirectory());
        b3 = q.b(a(file2), file2.isDirectory());
        return this.f2710a ? b2.compareTo(b3) : b3.compareTo(b2);
    }

    protected abstract String a(File file);

    public void a(boolean z) {
        this.f2710a = z;
    }
}
