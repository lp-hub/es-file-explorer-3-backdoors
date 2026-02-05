package com.estrongs.fs.c;

import android.content.Context;
import com.estrongs.a.b.l;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.av;
import com.estrongs.fs.g;
import com.estrongs.fs.impl.local.h;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    public long f3035a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f3036b = 0;
    public int c = 0;
    public long d = 0;
    public long e = 0;
    public long f = 0;
    public long g = 0;
    public long h = 0;
    public long i = 0;
    boolean j = false;
    private b k;

    public a() {
    }

    public a(b bVar) {
        this.k = bVar;
    }

    public a(File file) {
        a(file);
    }

    public void a() {
        this.j = true;
    }

    public void a(File file) {
        if (this.j) {
            return;
        }
        if (this.k != null) {
            this.k.a(file);
        }
        if (!ak.aZ(file.getPath()) && h.a((Context) FexApplication.a(), false)) {
            if ("/".equals(file.getPath())) {
                for (g gVar : com.estrongs.fs.impl.local.d.a(file.getPath(), com.estrongs.fs.h.d, l.f210a)) {
                    if (this.j) {
                        return;
                    } else {
                        try {
                            a(new File(gVar.getAbsolutePath()));
                        } catch (StackOverflowError e) {
                        }
                    }
                }
            }
            if (!com.estrongs.fs.impl.local.d.h(file.getPath()) || file.getName().trim().length() <= 0) {
                this.f3036b++;
                long e2 = com.estrongs.fs.impl.local.d.e(file.getPath());
                a(file.getName(), e2);
                this.f3035a = e2 + this.f3035a;
                return;
            }
            this.c++;
            for (g gVar2 : com.estrongs.fs.impl.local.d.a(file.getPath(), com.estrongs.fs.h.d, l.f210a)) {
                if (this.j) {
                    return;
                } else {
                    try {
                        a(new File(gVar2.getAbsolutePath()));
                    } catch (StackOverflowError e3) {
                    }
                }
            }
            return;
        }
        if ("/".equals(file.getPath())) {
            if (this.j) {
                return;
            }
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (this.j) {
                        return;
                    }
                    try {
                        a(file2);
                    } catch (StackOverflowError e4) {
                    }
                }
            }
        }
        if (!file.isDirectory() || file.getName().trim().length() <= 0) {
            this.f3036b++;
            long b2 = b(file);
            a(file.getName(), b2);
            this.f3035a = b2 + this.f3035a;
            return;
        }
        this.c++;
        File[] listFiles2 = file.listFiles();
        if (listFiles2 != null) {
            for (File file3 : listFiles2) {
                if (this.j) {
                    return;
                }
                try {
                    a(file3);
                } catch (StackOverflowError e5) {
                }
            }
        }
    }

    public void a(String str, long j) {
        int a2 = av.a(str);
        if (av.A(a2)) {
            this.g += j;
            return;
        }
        if (av.d(a2)) {
            this.e += j;
            return;
        }
        if (av.e(a2)) {
            this.f += j;
            return;
        }
        if (av.a(a2)) {
            this.d += j;
            return;
        }
        if (av.h(a2) || av.s(a2) || av.w(a2) || av.t(a2) || av.k(a2)) {
            this.h += j;
        } else {
            this.i += j;
        }
    }

    public void a(List<File> list) {
        Iterator<File> it = list.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    public long b() {
        return this.f3035a;
    }

    protected long b(File file) {
        return file.length();
    }

    public int c() {
        return this.f3036b;
    }

    public int d() {
        return this.c;
    }
}
