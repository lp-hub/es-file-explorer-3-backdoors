package com.estrongs.fs.impl.l;

import com.estrongs.fs.l;
import com.estrongs.fs.m;

/* loaded from: classes.dex */
public class b extends m {
    public b(String str, l lVar, String str2) {
        super(str, lVar, str2);
    }

    @Override // com.estrongs.fs.m, com.estrongs.fs.a, com.estrongs.fs.g
    public String getName() {
        return this.displayName;
    }

    public void setAbsolutePath(String str) {
        this.absolutePath = str;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public void setName(String str) {
        this.displayName = str;
    }

    public void setPath(String str) {
        this.path = str;
    }
}
