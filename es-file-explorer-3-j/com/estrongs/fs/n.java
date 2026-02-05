package com.estrongs.fs;

import com.estrongs.android.util.ak;

/* loaded from: classes.dex */
public class n extends a {
    public n(g gVar, String str) {
        if (!gVar.getPath().equals(gVar.getAbsolutePath())) {
            this.path = gVar.getPath().endsWith("/") ? gVar.getPath() + str : gVar.getPath() + "/" + str;
            this.absolutePath = gVar.getAbsolutePath().endsWith("/") ? gVar.getAbsolutePath() + str : gVar.getAbsolutePath() + "/" + str;
        } else {
            String str2 = gVar.getPath().endsWith("/") ? gVar.getPath() + str : gVar.getPath() + "/" + str;
            this.absolutePath = str2;
            this.path = str2;
        }
    }

    public n(String str) {
        super(str);
        this.name = ak.d(str);
        if (str.endsWith("/")) {
            this.type = l.c(str);
        }
    }

    public n(String str, boolean z) {
        super(str);
        this.name = ak.d(str);
        if (z) {
            this.type = l.f3184b;
        } else {
            this.type = l.f3183a;
        }
    }
}
