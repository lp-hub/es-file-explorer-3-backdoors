package com.estrongs.fs.impl.m;

import android.net.Uri;
import com.estrongs.a.b.l;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.b.i;
import com.estrongs.android.pop.app.b.m;
import com.estrongs.android.pop.app.b.n;
import com.estrongs.android.pop.q;
import com.estrongs.android.pop.utils.bx;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import com.estrongs.android.view.ae;
import com.estrongs.fs.b.t;
import com.estrongs.fs.b.u;
import com.estrongs.fs.d;
import com.estrongs.fs.g;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.media.e;
import com.estrongs.fs.j;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class b implements j {

    /* renamed from: a, reason: collision with root package name */
    public static Map<Long, List<g>> f3124a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    private static b f3125b;

    private b() {
    }

    public static b a() {
        if (f3125b == null) {
            f3125b = new b();
        }
        return f3125b;
    }

    private List<g> a(String str, String str2, String str3, l<String> lVar, u uVar, List<m> list) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        Map<String, String> b2 = i.b(str3);
        com.estrongs.android.pop.app.b.j jVar = (b2.size() > 0 || !q.a(FexApplication.a()).p()) ? new com.estrongs.android.pop.app.b.j(b2, true) : null;
        try {
            z = Boolean.valueOf(b2.get("recursion")).booleanValue();
        } catch (Exception e) {
            z = false;
        }
        com.estrongs.fs.a.b.a().a(str, (List<g>) new ArrayList(), false);
        a(str, arrayList, str2, jVar, z, q.a(FexApplication.a()).p() ? false : true, uVar, list);
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0098 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0041 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(String str, List<g> list, String str2, h hVar, boolean z, boolean z2, u uVar, List<m> list2) {
        boolean z3;
        List<g> a2;
        if (bx.a() < bx.f1245b) {
            Thread.currentThread().setPriority(4);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(ak.a());
        n a3 = ((com.estrongs.android.pop.app.b.j) hVar).a();
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        ArrayList arrayList2 = new ArrayList();
        com.estrongs.fs.m mVar = new com.estrongs.fs.m(str2);
        mVar.putExtra("needCheckStorageLink", true);
        arrayList2.add(mVar);
        while (!arrayList2.isEmpty()) {
            g gVar = (g) arrayList2.remove(0);
            boolean booleanValue = ((Boolean) gVar.getExtra("needCheckStorageLink")).booleanValue();
            if (booleanValue) {
                String bt = ak.bt(gVar.getAbsolutePath());
                if (bt != null) {
                    int i = 0;
                    while (i < arrayList.size() && !bt.equals(arrayList.get(i))) {
                        i++;
                    }
                    if (i < arrayList.size()) {
                        arrayList.remove(i);
                        z3 = false;
                    } else {
                        continue;
                    }
                } else if (ak.bn(gVar.getAbsolutePath()) != null) {
                    z3 = false;
                }
                a2 = d.a().a(gVar, ak.aO(gVar.getAbsolutePath()), false, (h) null, l.f210a);
                if (a2 == null) {
                    List<g> list3 = null;
                    ae aeVar = (a2 == null || a2.size() <= 0) ? null : new ae(gVar.getPath(), Integer.MAX_VALUE);
                    for (g gVar2 : a2) {
                        if (currentTask != null && currentTask.taskStopped()) {
                            return;
                        }
                        if (!ak.aO(gVar2.getAbsolutePath()) || !ak.a(new File(gVar2.getAbsolutePath()))) {
                            if (ak.h().a(gVar2)) {
                                if (currentTask != null) {
                                    currentTask.sendMessage(1, 1L, gVar2.getAbsolutePath());
                                }
                                if (aeVar.a(gVar2) && (!z2 || !gVar2.getName().startsWith("."))) {
                                    if (gVar2.getFileType().a() && z) {
                                        gVar2.putExtra("needCheckStorageLink", Boolean.valueOf(z3));
                                        arrayList2.add(gVar2);
                                    }
                                    if (hVar == null || hVar.a(gVar2)) {
                                        if (list3 == null) {
                                            list3 = new ArrayList<>();
                                        }
                                        a aVar = new a(str, str2, gVar2);
                                        if (a3 != null) {
                                            aVar.f3122a = a3.a();
                                        }
                                        list3.add(aVar);
                                    }
                                }
                            }
                        }
                    }
                    if (list3 != null) {
                        Collections.sort(list3, new c(this));
                        if (currentTask != null && currentTask.taskStopped()) {
                            return;
                        }
                        uVar.a((t) com.estrongs.a.a.getCurrentTask(), list3);
                        com.estrongs.fs.a.b.a().a(str, list3, true);
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
            z3 = booleanValue;
            a2 = d.a().a(gVar, ak.aO(gVar.getAbsolutePath()), false, (h) null, l.f210a);
            if (a2 == null) {
            }
        }
    }

    private List<m> d(String str) {
        List<String> a2 = i.a(Uri.decode(i.a("keyword", str)));
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= a2.size()) {
                return arrayList;
            }
            arrayList.add(new m(a2.get(i2)));
            i = i2 + 1;
        }
    }

    @Override // com.estrongs.fs.j
    public g a(String str) {
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0040, code lost:
    
        if (r1.equals(r0) == false) goto L13;
     */
    @Override // com.estrongs.fs.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public List<g> a(g gVar, h hVar, TypedMap typedMap) {
        String str;
        String path = gVar.getPath();
        if (com.estrongs.fs.a.a.c(path).size() != 3) {
            ArrayList arrayList = new ArrayList();
            List<g> a2 = d.a().a(d.a().j(gVar.getAbsolutePath()), false, true, hVar, l.f210a);
            for (int i = 0; i < a2.size(); i++) {
                arrayList.add(new a(path, null, a2.get(i)));
            }
            return arrayList;
        }
        String string = typedMap.getString("pattern");
        u uVar = (u) typedMap.get("partialListener");
        String a3 = i.a("searchPath", string);
        try {
            if (ak.aO(a3) && (str = new File(a3).getCanonicalPath()) != null && str.length() > 0) {
            }
            str = a3;
        } catch (Exception e) {
            str = a3;
        }
        String bo = ak.bo(str);
        String path2 = gVar.getPath();
        List<m> d = d(string);
        if (!ak.a(path2, typedMap)) {
            a(path2, bo, string, null, uVar, d);
            return new ArrayList();
        }
        if (aw.h() && bo.startsWith("/storage/emulated/legacy")) {
            bo = bo.replaceFirst("/storage/emulated/legacy", com.estrongs.android.pop.b.b());
        }
        return e.a(path2, bo, hVar, string);
    }

    @Override // com.estrongs.fs.j
    public boolean b(String str) {
        return true;
    }

    @Override // com.estrongs.fs.j
    public InputStream c(String str) {
        return null;
    }
}
