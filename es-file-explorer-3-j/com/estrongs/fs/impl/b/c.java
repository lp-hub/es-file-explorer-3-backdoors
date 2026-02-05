package com.estrongs.fs.impl.b;

import android.content.pm.ApplicationInfo;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.fs.l;
import com.estrongs.fs.m;
import java.io.File;

/* loaded from: classes.dex */
public class c extends m {

    /* renamed from: a, reason: collision with root package name */
    g f3051a;

    /* renamed from: b, reason: collision with root package name */
    private String f3052b;
    private ApplicationInfo c;
    private int d;

    public c(String str, l lVar, String str2, ApplicationInfo applicationInfo) {
        super(str, lVar, str2);
        this.f3051a = null;
        this.c = applicationInfo;
    }

    public c a(g gVar) {
        this.f3051a = gVar;
        return this;
    }

    public String a() {
        return this.f3051a != null ? this.f3051a.b() + "(" + this.f3052b + ")" : this.f3052b;
    }

    public void a(int i) {
        this.d = i;
    }

    public void a(String str) {
        this.f3052b = str;
    }

    public String b() {
        return this.f3051a != null ? this.f3051a.b() + "(" + FexApplication.a().getString(C0000R.string.current) + ":" + this.f3052b + ")" : this.f3052b;
    }

    public ApplicationInfo c() {
        return this.c;
    }

    public int d() {
        return this.f3051a != null ? this.f3051a.g() ? 2 : 1 : this.d;
    }

    public boolean e() {
        return this.f3051a != null;
    }

    public g f() {
        return this.f3051a;
    }

    public String g() {
        if (f() != null) {
            return com.estrongs.fs.c.d.e(f().a() + "_" + f().b() + ".apk");
        }
        return null;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long lastModified() {
        return this.f3051a != null ? this.f3051a.e() : new File(this.path).lastModified();
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long length() {
        if (this.f3051a != null) {
            return this.f3051a.d();
        }
        File file = new File(this.path);
        if (file.exists()) {
            return file.length();
        }
        return 0L;
    }
}
