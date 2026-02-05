package com.estrongs.fs.impl.f;

import com.estrongs.fs.l;
import java.io.File;

/* loaded from: classes.dex */
public class b extends com.estrongs.fs.a {

    /* renamed from: a, reason: collision with root package name */
    protected String f3072a;

    /* renamed from: b, reason: collision with root package name */
    private File f3073b;

    public b(String str, String str2, String str3, String str4, long j, long j2) {
        super(str2, str3);
        this.type = l.f3184b;
        this.f3072a = str;
        this.size = j;
        this.lastModified = j2;
        this.name = str4;
    }

    private void a() {
        if (this.f3073b == null) {
            this.f3073b = new File(this.absolutePath);
        }
    }

    @Override // com.estrongs.fs.a
    protected l doGetFileType() {
        return this.type;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public String getPath() {
        return this.path;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long lastModified() {
        if (this.lastModified <= 0) {
            a();
            this.lastModified = this.f3073b.lastModified();
        }
        return this.lastModified;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long length() {
        if (this.size <= 0) {
            a();
            this.size = this.f3073b.length();
        }
        return this.size;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public void setName(String str) {
        if (this.name != null) {
            this.absolutePath = this.absolutePath.substring(0, this.absolutePath.lastIndexOf(this.name)) + str;
        }
        this.name = str;
    }
}
