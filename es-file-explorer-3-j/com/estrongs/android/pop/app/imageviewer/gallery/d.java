package com.estrongs.android.pop.app.imageviewer.gallery;

import android.content.Context;
import android.net.Uri;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.q;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.av;
import com.estrongs.fs.b.o;
import com.estrongs.fs.l;
import com.estrongs.fs.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class d implements f {

    /* renamed from: a, reason: collision with root package name */
    private List<e> f1004a = new LinkedList();

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.fs.d f1005b;

    public d(com.estrongs.fs.d dVar, String str, String str2, com.estrongs.fs.h hVar, com.estrongs.fs.c.a.a aVar) {
        this.f1005b = dVar;
        a(str, str2, hVar, aVar);
    }

    private void a(String str, String str2, com.estrongs.fs.h hVar, com.estrongs.fs.c.a.a aVar) {
        List<com.estrongs.fs.g> list;
        l fileType;
        try {
            String e = ak.e(str);
            String str3 = !e.endsWith("/") ? e + "/" : e;
            String e2 = ak.e(str2);
            if (!e2.endsWith("/")) {
                e2 = e2 + "/";
            }
            list = hVar == null ? com.estrongs.fs.d.a((Context) null).a(str3, (ak.aP(str3) || ak.aK(str3)) ? false : true) : com.estrongs.fs.d.a((Context) null).a(new m(str3, e2, l.f3183a, null), (ak.aP(str3) || ak.aK(str3)) ? false : true, hVar);
        } catch (Exception e3) {
            list = null;
        }
        if (list == null) {
            return;
        }
        Collections.sort(list, aVar);
        for (int i = 0; i < list.size(); i++) {
            com.estrongs.fs.g gVar = list.get(i);
            if (gVar != null && ((fileType = gVar.getFileType()) == null || !fileType.a())) {
                String absolutePath = gVar.getAbsolutePath();
                if (av.b(gVar) || ak.d(absolutePath, str)) {
                    this.f1004a.add(new c(this, this.f1005b, gVar));
                }
            }
        }
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public int a(e eVar) {
        return this.f1004a.indexOf(eVar);
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public e a(int i) {
        return this.f1004a.get(i);
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public e a(Uri uri) {
        e next;
        String d;
        String path = uri.getPath();
        if ("search".equals(uri.getScheme())) {
            path = uri.toString();
        }
        Iterator<e> it = this.f1004a.iterator();
        do {
            String str = path;
            if (!it.hasNext()) {
                return null;
            }
            next = it.next();
            d = next.d();
            if ("file".equals(uri.getScheme()) && !d.startsWith("file://")) {
                path = uri.getPath();
            } else if ("search".equals(uri.getScheme())) {
                c cVar = (c) next;
                d = cVar.a() != null ? cVar.a().getPath() : d;
                path = str;
            } else {
                path = uri.toString();
            }
        } while (!ak.d(d, path));
        return next;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public void a() {
        this.f1004a.clear();
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public int b() {
        return this.f1004a.size();
    }

    @Override // com.estrongs.android.pop.app.imageviewer.gallery.f
    public boolean b(int i) {
        return b(a(i));
    }

    public boolean b(e eVar) {
        c cVar = (c) eVar;
        ArrayList arrayList = new ArrayList(1);
        if (cVar.a() == null) {
            arrayList.add(this.f1005b.j(cVar.d()));
        } else {
            arrayList.add(cVar.a());
        }
        o oVar = new o(this.f1005b, (List<com.estrongs.fs.g>) arrayList, false, q.a(FexApplication.a()).aD());
        oVar.execute(false);
        if (oVar.getTaskStatus() != 4) {
            return false;
        }
        this.f1004a.remove(eVar);
        return true;
    }
}
