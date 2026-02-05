package com.estrongs.fs.impl.b;

import android.annotation.TargetApi;
import android.content.pm.ApplicationInfo;

@TargetApi(8)
/* loaded from: classes.dex */
public class a extends b {
    @Override // com.estrongs.fs.impl.b.b, com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        boolean a2 = super.a(gVar);
        if (a2) {
            return a2;
        }
        ApplicationInfo c = ((c) gVar).c();
        if (this.f3050a == 3) {
            if ((c.flags & 262144) == 0) {
                return true;
            }
        } else if (this.f3050a == 4 && (c.flags & 262144) != 0) {
            return true;
        }
        return false;
    }
}
