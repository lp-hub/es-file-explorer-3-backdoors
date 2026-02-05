package com.estrongs.fs.impl.m;

import com.estrongs.android.util.ak;
import com.estrongs.fs.g;
import com.estrongs.fs.l;

/* loaded from: classes.dex */
public class a extends com.estrongs.fs.a {

    /* renamed from: a, reason: collision with root package name */
    public int f3122a;

    /* renamed from: b, reason: collision with root package name */
    private g f3123b;
    private String c;
    private String d;

    public a(String str, String str2, g gVar) {
        String str3 = null;
        this.f3123b = null;
        if (ak.aL(str)) {
            this.c = str;
            this.d = str2;
        } else {
            str3 = str.endsWith("/") ? str + gVar.getName() : str + "/" + gVar.getName();
        }
        this.path = str3;
        this.absolutePath = gVar.getAbsolutePath();
        this.f3123b = gVar;
        this.name = gVar.getName();
    }

    public g a() {
        return this.f3123b;
    }

    @Override // com.estrongs.fs.a
    protected l doGetFileType() {
        return this.f3123b.getFileType().a() ? l.f3183a : l.f3184b;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public boolean exists() {
        return this.f3123b.exists();
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public String getPath() {
        if (this.path == null) {
            String f = com.estrongs.fs.a.a.f(this.f3123b.getAbsolutePath());
            String replace = (this.d != null ? f.substring(this.d.length()) : f.substring(com.estrongs.fs.a.a.f(ak.aM(this.c)).length())).replace("/", "#");
            this.path = this.c.charAt(this.c.length() + (-1)) == '/' ? this.c + replace : this.c + "/" + replace;
        }
        return super.getPath();
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long lastModified() {
        return this.f3123b.lastModified();
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long length() {
        return this.f3123b.length();
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public void setName(String str) {
        if (this.path == null) {
            getPath();
        }
        if (this.name != null && ak.aL(com.estrongs.fs.a.a.a(this.path))) {
            str = str.substring(str.lastIndexOf("#") + 1);
        }
        super.setName(str);
        this.f3123b.setName(str);
    }
}
