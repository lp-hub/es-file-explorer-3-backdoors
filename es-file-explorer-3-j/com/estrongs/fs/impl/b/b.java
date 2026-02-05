package com.estrongs.fs.impl.b;

import android.content.pm.ApplicationInfo;
import com.estrongs.fs.h;

/* loaded from: classes.dex */
public class b implements h {

    /* renamed from: a, reason: collision with root package name */
    public int f3050a = 2;

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        ApplicationInfo c = ((c) gVar).c();
        if (this.f3050a == 0) {
            return true;
        }
        if (this.f3050a != 1 || (c.flags & 1) <= 0) {
            return this.f3050a == 2 && ((c.flags & 128) != 0 || (c.flags & 1) == 0);
        }
        return true;
    }
}
