package com.estrongs.io.archive;

import com.estrongs.a.b.l;
import com.estrongs.a.b.p;
import com.estrongs.android.pop.FexApplication;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    protected String f3221a;

    /* renamed from: b, reason: collision with root package name */
    protected com.estrongs.io.a.d f3222b;
    protected long c = 0;
    private Map<String, String> d;

    public i(String str, com.estrongs.io.a.d dVar, Map<String, String> map) {
        this.d = new HashMap();
        this.f3221a = str;
        if (dVar == null) {
            this.f3222b = com.estrongs.io.a.d.f3186b;
        } else {
            this.f3222b = dVar;
        }
        if (map != null) {
            this.d = map;
        }
    }

    public String a() {
        return this.f3221a;
    }

    protected void a(File file, String str, e eVar) {
        BufferedInputStream bufferedInputStream;
        if (!com.estrongs.fs.impl.local.d.a(file.getPath()) || this.f3222b.b()) {
            return;
        }
        String name = (str == null || str.length() < 1) ? file.getName() : str + "/" + file.getName();
        if (com.estrongs.fs.impl.local.d.h(file.getPath())) {
            eVar.a(name + "/");
            Iterator<com.estrongs.fs.g> it = com.estrongs.fs.impl.local.d.a(file.getPath(), com.estrongs.fs.h.d, l.f210a).iterator();
            while (it.hasNext()) {
                a(new File(it.next().getAbsolutePath()), name, eVar);
            }
            return;
        }
        this.f3222b.a(file.getName(), com.estrongs.fs.impl.local.d.e(file.getPath()));
        eVar.a(name);
        byte[] bArr = new byte[1048576];
        try {
            bufferedInputStream = new BufferedInputStream(com.estrongs.fs.impl.local.d.a(FexApplication.a(), file.getPath()), 1048576);
            while (true) {
                try {
                    int read = bufferedInputStream.read(bArr, 0, 1048576);
                    if (read == -1 || this.f3222b.b()) {
                        break;
                    }
                    eVar.a(bArr, 0, read);
                    this.c += read;
                    this.f3222b.a(this.c);
                } catch (Throwable th) {
                    th = th;
                    if (bufferedInputStream != null) {
                        bufferedInputStream.close();
                    }
                    eVar.a();
                    throw th;
                }
            }
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
            eVar.a();
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream = null;
        }
    }

    public void a(List<String> list) {
        File file;
        boolean b2;
        this.c = 0L;
        File file2 = new File(a());
        if (!com.estrongs.fs.impl.local.d.a(file2.getParentFile().getAbsolutePath())) {
            if (com.estrongs.fs.d.a() != null) {
                com.estrongs.fs.d.a().g(file2.getParentFile().getAbsolutePath());
            } else {
                com.estrongs.fs.impl.local.d.g(file2.getParentFile().getAbsolutePath());
            }
        }
        g gVar = new g(this.f3222b);
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            gVar.a(new File(it.next()));
        }
        if (this.f3222b.b()) {
            return;
        }
        this.f3222b.a(new File(this.f3221a).getName(), gVar.a(), gVar.c() + gVar.b());
        this.d.put("archive_type", f.a(this.f3221a));
        String str = this.f3221a + ".tmp";
        e a2 = c.a(str, this.d);
        try {
            try {
                Iterator<String> it2 = list.iterator();
                while (it2.hasNext()) {
                    a(new File(it2.next()), "", a2);
                }
                if (b2) {
                    com.estrongs.fs.d.a().a(file.getCanonicalPath(), p.f215b);
                    return;
                }
                if (com.estrongs.fs.impl.local.d.a(this.f3221a)) {
                    com.estrongs.fs.d.a().a(this.f3221a, p.f215b);
                }
                if (file == null || !file.exists()) {
                    return;
                }
                com.estrongs.fs.d.a().a(com.estrongs.fs.d.a().j(file.getAbsolutePath()), this.f3221a);
            } catch (Throwable th) {
                th.printStackTrace();
                if (!(th instanceof IOException)) {
                    throw new IOException(th.getMessage());
                }
                throw ((IOException) th);
            }
        } finally {
            a2.b();
            file = new File(str);
            if (!this.f3222b.b()) {
            }
            com.estrongs.fs.d.a().a(file.getCanonicalPath(), p.f215b);
        }
    }
}
