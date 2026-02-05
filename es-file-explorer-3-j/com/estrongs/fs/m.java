package com.estrongs.fs;

import com.estrongs.android.util.ak;

/* loaded from: classes.dex */
public class m extends a {
    protected String displayName;

    public m(String str) {
        super(str, l.f3183a);
    }

    public m(String str, l lVar) {
        super(str, lVar);
    }

    public m(String str, l lVar, String str2) {
        super(str, lVar);
        this.displayName = str2;
    }

    public m(String str, String str2, l lVar, String str3) {
        super(str, str2, lVar);
        this.displayName = str3;
    }

    @Override // com.estrongs.fs.a
    protected l doGetFileType() {
        return l.f3183a;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public boolean exists() {
        return false;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public String getName() {
        return this.displayName != null ? this.displayName : ak.d(this.path);
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }
}
