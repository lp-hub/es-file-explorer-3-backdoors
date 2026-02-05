package com.estrongs.android.pop.app.diskusage;

import java.io.File;
import java.util.Comparator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements Comparator<Map.Entry<File, com.estrongs.fs.c.a>> {

    /* renamed from: a, reason: collision with root package name */
    private boolean f666a;

    private d() {
        this.f666a = true;
    }

    private int a(long j) {
        if (j > 0) {
            return 1;
        }
        return j < 0 ? -1 : 0;
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(Map.Entry<File, com.estrongs.fs.c.a> entry, Map.Entry<File, com.estrongs.fs.c.a> entry2) {
        long b2 = entry.getValue().b() - entry2.getValue().b();
        return this.f666a ? a(b2) : a(b2) * (-1);
    }

    public void a(boolean z) {
        this.f666a = z;
    }
}
