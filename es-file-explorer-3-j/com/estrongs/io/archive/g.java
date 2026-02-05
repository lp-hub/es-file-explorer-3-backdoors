package com.estrongs.io.archive;

import com.estrongs.a.b.l;
import com.estrongs.io.archive.rar.RarArchiveEntryFile;
import com.estrongs.io.model.ArchiveEntryFile;
import java.io.File;
import java.util.Iterator;

/* loaded from: classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    long f3217a = 0;

    /* renamed from: b, reason: collision with root package name */
    int f3218b = 0;
    int c = 0;
    private com.estrongs.io.a.d d;

    public g() {
    }

    public g(com.estrongs.io.a.d dVar) {
        this.d = dVar;
    }

    public long a() {
        return this.f3217a;
    }

    public void a(File file) {
        if (this.d == null || !this.d.b()) {
            if (!(file instanceof ArchiveEntryFile)) {
                if (com.estrongs.fs.impl.local.d.h(file.getPath())) {
                    this.c++;
                    Iterator<com.estrongs.fs.g> it = com.estrongs.fs.impl.local.d.a(file.getPath(), com.estrongs.fs.h.d, l.f210a).iterator();
                    while (it.hasNext()) {
                        a(new File(it.next().getAbsolutePath()));
                    }
                    return;
                }
                this.f3218b++;
                long e = com.estrongs.fs.impl.local.d.e(file.getPath());
                if (-1 == e) {
                    this.f3217a += file.length();
                    return;
                } else {
                    this.f3217a = e + this.f3217a;
                    return;
                }
            }
            if (file.isDirectory()) {
                this.c++;
                for (File file2 : file.listFiles()) {
                    a(file2);
                }
                return;
            }
            if (!(file instanceof RarArchiveEntryFile)) {
                this.f3218b++;
                this.f3217a += file.length();
            } else {
                if (((RarArchiveEntryFile) file).getArchiveEntry().v()) {
                    return;
                }
                this.f3218b++;
                this.f3217a += file.length();
            }
        }
    }

    public int b() {
        return this.f3218b;
    }

    public int c() {
        return this.c;
    }
}
