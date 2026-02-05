package com.estrongs.fs.a;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.av;
import com.estrongs.android.util.aw;
import com.estrongs.fs.g;
import com.estrongs.fs.impl.pcs.PcsFileSystem;
import com.estrongs.fs.m;
import com.estrongs.fs.n;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class b {
    private static b c;

    /* renamed from: a, reason: collision with root package name */
    private d f2952a = new d();

    /* renamed from: b, reason: collision with root package name */
    private List<e> f2953b = new ArrayList();
    private Set<String> d = new HashSet();
    private List<String> e = new ArrayList();
    private int f = 0;
    private Map<String, List<WeakReference<g>>> g = new HashMap();
    private Map<String, List<WeakReference<g>>> h = new HashMap();
    private boolean i = false;

    private b() {
        new Thread(new c(this), "CacheMonitor").start();
    }

    private int a(d dVar) {
        if (dVar == null) {
            return 0;
        }
        int size = dVar.a() != null ? dVar.a().size() : 0;
        Iterator<d> it = dVar.c().iterator();
        while (true) {
            int i = size;
            if (!it.hasNext()) {
                return i;
            }
            size = a(it.next()) + i;
        }
    }

    private int a(List<g> list, String str) {
        int i = 0;
        Iterator<g> it = list.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return -1;
            }
            if (ak.d(str, it.next().getPath())) {
                return i2;
            }
            i = i2 + 1;
        }
    }

    public static b a() {
        if (c == null) {
            c = new b();
        }
        return c;
    }

    private d a(String str, boolean z) {
        int i = 0;
        List<String> c2 = a.c(str);
        if (c2.size() == 0) {
            return null;
        }
        if (c2.size() == 1) {
            return this.f2952a;
        }
        if (c2.size() >= 2 && ("sftp".equals(c2.get(0)) || "ftps".equals(c2.get(0)) || "ftpes".equals(c2.get(0)) || "webdav".equals(c2.get(0)) || "webdavs".equals(c2.get(0)))) {
            c2.set(0, "ftp");
        }
        d dVar = this.f2952a;
        while (true) {
            int i2 = i;
            if (i2 >= c2.size() - 1) {
                return dVar;
            }
            d a2 = dVar.a(c2.get(i2));
            if (a2 != null) {
                dVar = a2;
            } else {
                if (!z) {
                    return null;
                }
                d dVar2 = new d();
                dVar.a(c2.get(i2), dVar2);
                h(a.a(c2, i2));
                dVar = dVar2;
            }
            if (i2 == 0 && j(str)) {
                return dVar;
            }
            i = i2 + 1;
        }
    }

    private void a(String str, int i, List<String> list) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.f2953b.size()) {
                return;
            }
            this.f2953b.get(i3).a(str, i, list);
            i2 = i3 + 1;
        }
    }

    private void a(String str, String str2, int i) {
        a(str, str2, (String) null, i);
    }

    private void a(List<String> list, int i, String str) {
        if ("sftp://".equals(str) || "ftps://".equals(str) || "ftpes://".equals(str) || "webdav://".equals(str) || "webdavs://".equals(str)) {
            str = "ftp://";
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.f2953b.size()) {
                return;
            }
            this.f2953b.get(i3).a(list, i, str);
            i2 = i3 + 1;
        }
    }

    private void a(List<String> list, String str, int i) {
        List<String> a2 = a.a(list);
        Iterator<String> it = a2.iterator();
        while (it.hasNext()) {
            a(it.next(), true, str);
        }
        if (i == -1) {
            i = a.b(a2);
        }
        if ((i & 4) == 4) {
            d();
        }
        a(a2, i, str);
    }

    private void a(Set<String> set) {
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            h(it.next());
        }
    }

    private void b(g gVar, String str, int i) {
        if ((ak.aq(gVar.getPath()) || ak.ao(gVar.getPath())) && gVar.getFileType().b()) {
            ArrayList arrayList = new ArrayList();
            synchronized (this.h) {
                String a2 = PcsFileSystem.a(ak.Y(ak.bw(gVar.getAbsolutePath())));
                List<WeakReference<g>> list = this.h.get(a2);
                if (list != null) {
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        g gVar2 = list.get(i2).get();
                        if (gVar2 != null && !gVar.getPath().equals(gVar2.getPath())) {
                            arrayList.add(gVar2);
                        }
                    }
                    String a3 = a.a(a2);
                    StringBuilder sb = new StringBuilder();
                    if (!a3.equals("/")) {
                        a3 = a3 + "/";
                    }
                    this.h.put(sb.append(a3).append(a.b(str)).toString(), this.h.remove(a2));
                }
            }
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                c((g) arrayList.get(i3), str, i);
            }
        }
        c(gVar, str, i);
    }

    private void b(String str, String str2, int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.f2953b.size()) {
                return;
            }
            this.f2953b.get(i3).a(str, str2, i);
            i2 = i3 + 1;
        }
    }

    private void c(g gVar, String str, int i) {
        String path = gVar.getPath();
        String absolutePath = gVar.getAbsolutePath();
        String f = a.f(path);
        String f2 = a.f(absolutePath);
        String b2 = a.b(str);
        String str2 = a.a(f2) + "/" + b2;
        if (ak.aL(a.a(f))) {
            String b3 = a.b(f);
            b2 = b3.substring(0, b3.lastIndexOf("#") + 1) + b2;
        } else if (ak.aj(f) && !ak.Z(f).startsWith("/files")) {
            String b4 = a.b(f);
            b2 = b4.substring(0, b4.lastIndexOf(">") + 1) + b2;
            str2 = a.a(f2) + "/" + b2;
        }
        String str3 = a.a(f) + "/" + b2;
        if (ak.aO(str2)) {
            File file = new File(str2);
            if (!file.isDirectory() && av.K(str2)) {
                a("book://" + f2.substring(1, f2.length()), "book://" + str2.substring(1, str2.length()), i);
                if (!aw.e()) {
                    com.estrongs.fs.impl.d.b.a().a(f2, str2);
                }
            }
            if (!file.isDirectory() && av.G(str2)) {
                a("apk://" + f2.substring(1, f2.length()), "apk://" + str2.substring(1, str2.length()), i);
                if (!aw.e()) {
                    com.estrongs.fs.impl.a.b.a().a(f2, str2);
                }
            }
        }
        if (!f.equals(f2)) {
            a(f2, str2, i);
        }
        a(f, str3, i);
    }

    private void d(List<g> list) {
        List<WeakReference<g>> list2;
        synchronized (this.g) {
            for (int i = 0; i < list.size(); i++) {
                g gVar = list.get(i);
                String b2 = a.b(gVar.getPath());
                if (this.g.get(b2) == null) {
                    list2 = new ArrayList<>();
                    this.g.put(b2, list2);
                } else {
                    list2 = this.g.get(b2);
                    Iterator<WeakReference<g>> it = list2.iterator();
                    while (it.hasNext()) {
                        g gVar2 = it.next().get();
                        if (gVar2 == null || gVar.getPath().equals(gVar2.getPath())) {
                            it.remove();
                        }
                    }
                }
                list2.add(new WeakReference<>(gVar));
            }
        }
    }

    private void d(List<g> list, int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(list.get(i2).getPath());
            arrayList2.add(list.get(i2).getAbsolutePath());
        }
        List<String> a2 = a.a(arrayList);
        List<String> a3 = a.a(arrayList2);
        if (a2.size() > 0) {
            if (a2.get(0).equals(a3.get(0))) {
                a(a2, i);
            } else {
                e(a2, i);
                a(a3, i);
            }
        }
    }

    private void e(List<g> list) {
        List<WeakReference<g>> list2;
        synchronized (this.h) {
            for (int i = 0; i < list.size(); i++) {
                g gVar = list.get(i);
                if (!gVar.getFileType().a()) {
                    String a2 = PcsFileSystem.a(ak.Y(ak.bw(gVar.getAbsolutePath())));
                    if (this.h.get(a2) == null) {
                        list2 = new ArrayList<>();
                        this.h.put(a2, list2);
                    } else {
                        list2 = this.h.get(a2);
                        Iterator<WeakReference<g>> it = list2.iterator();
                        while (it.hasNext()) {
                            g gVar2 = it.next().get();
                            if (gVar2 == null || gVar.getPath().equals(gVar2.getPath())) {
                                it.remove();
                            }
                        }
                    }
                    list2.add(new WeakReference<>(gVar));
                }
            }
        }
    }

    private void e(List<String> list, int i) {
        try {
            a(b(list));
            if (i == -1) {
                i = a.b(list);
            }
            if ((i & 4) == 4) {
                d();
            }
            a(a.a(list.get(0)), i, list);
            if (ak.aq(list.get(0)) || ak.ao(list.get(0))) {
                String Y = ak.aq(list.get(0)) ? ak.Y(list.get(0)) : list.get(0).substring(ak.g().length());
                String substring = list.get(0).substring(0, list.get(0).indexOf(Y));
                if (Y.indexOf("/files") == 0) {
                    if ((i & 4) == 4) {
                        String str = substring + "/pictures";
                        h(str);
                        a(str, i, list);
                    } else if ((i & 2) == 2) {
                        String str2 = substring + "/music";
                        h(str2);
                        a(str2, i, list);
                    } else if ((i & 8) == 8) {
                        String str3 = substring + "/videos";
                        h(str3);
                        a(str3, i, list);
                    } else if ((i & 16) == 16) {
                        String str4 = substring + "/documents";
                        h(str4);
                        a(str4, i, list);
                    } else if ((i & 32) == 32) {
                        String str5 = substring + "/apps";
                        h(str5);
                        a(str5, i, list);
                    } else if ((i & 64) == 64) {
                        String str6 = substring + "/others";
                        h(str6);
                        a(str6, i, list);
                    }
                } else if (Y.indexOf("/pictures") == 0 || Y.indexOf("/music") == 0 || Y.indexOf("/videos") == 0 || Y.indexOf("/documents") == 0 || Y.indexOf("/apps") == 0 || Y.indexOf("/others") == 0) {
                    String str7 = substring + "/files";
                    h(str7);
                    a(str7, i, list);
                }
            }
            if (ak.aj(list.get(0)) && ak.aA(list.get(0))) {
                String replaceFirst = list.get(0).substring(0, list.get(0).indexOf(ak.Z(list.get(0)))).replaceFirst("SP://", "pcs://");
                String str8 = replaceFirst + "/pictures";
                h(str8);
                a(str8, i, (List<String>) null);
                String str9 = replaceFirst + "/files";
                h(str9);
                a(str9, i, (List<String>) null);
            }
        } catch (Exception e) {
        }
    }

    private void f(List<g> list, int i) {
        ArrayList arrayList;
        if (list == null || list.size() < 1) {
            return;
        }
        if (ak.au(list.get(0).getPath()) && list.get(0).getFileType().b()) {
            HashMap hashMap = new HashMap();
            synchronized (this.g) {
                for (int i2 = 0; i2 < list.size(); i2++) {
                    List<WeakReference<g>> remove = this.g.remove(a.b(list.get(i2).getPath()));
                    if (remove != null) {
                        for (int i3 = 0; i3 < remove.size(); i3++) {
                            g gVar = remove.get(i3).get();
                            if (gVar != null && !list.get(i2).getPath().equals(gVar.getPath())) {
                                List list2 = (List) hashMap.get(a.a(gVar.getPath()));
                                if (list2 == null) {
                                    list2 = new ArrayList();
                                    hashMap.put(a.a(gVar.getPath()), list2);
                                }
                                list2.add(gVar.getPath());
                            }
                        }
                    }
                }
            }
            Iterator it = hashMap.values().iterator();
            while (it.hasNext()) {
                a((List<String>) it.next(), (String) null, i);
            }
        }
        if (ak.aq(list.get(0).getPath()) || ak.ao(list.get(0).getPath())) {
            HashMap hashMap2 = new HashMap();
            synchronized (this.h) {
                int i4 = 0;
                ArrayList arrayList2 = null;
                while (i4 < list.size()) {
                    if (list.get(i4).getFileType().b()) {
                        List<WeakReference<g>> remove2 = this.h.remove(PcsFileSystem.a(ak.Y(ak.bw(list.get(i4).getAbsolutePath()))));
                        if (remove2 != null) {
                            for (int i5 = 0; i5 < remove2.size(); i5++) {
                                g gVar2 = remove2.get(i5).get();
                                if (gVar2 != null && !list.get(i4).getPath().equals(gVar2.getPath())) {
                                    List list3 = (List) hashMap2.get(a.a(gVar2.getPath()));
                                    if (list3 == null) {
                                        list3 = new ArrayList();
                                        hashMap2.put(a.a(gVar2.getPath()), list3);
                                    }
                                    list3.add(gVar2.getPath());
                                }
                            }
                        }
                        arrayList = arrayList2;
                    } else {
                        Iterator<Map.Entry<String, List<WeakReference<g>>>> it2 = this.h.entrySet().iterator();
                        while (it2.hasNext()) {
                            Map.Entry<String, List<WeakReference<g>>> next = it2.next();
                            if (next.getKey().indexOf(PcsFileSystem.a(ak.Y(ak.bw(list.get(i4).getAbsolutePath())))) == 0) {
                                List<WeakReference<g>> value = next.getValue();
                                if (value != null) {
                                    for (int i6 = 0; i6 < value.size(); i6++) {
                                        g gVar3 = value.get(i6).get();
                                        if (gVar3 != null && gVar3.getPath().indexOf(list.get(i4).getPath()) != 0) {
                                            List list4 = (List) hashMap2.get(a.a(gVar3.getPath()));
                                            if (list4 == null) {
                                                list4 = new ArrayList();
                                                hashMap2.put(a.a(gVar3.getPath()), list4);
                                            }
                                            list4.add(gVar3.getPath());
                                        }
                                    }
                                }
                                it2.remove();
                            }
                        }
                        ArrayList arrayList3 = arrayList2 == null ? new ArrayList() : arrayList2;
                        if (ak.aq(list.get(i4).getPath())) {
                            String d = a.d(ak.g());
                            String d2 = a.d(com.estrongs.android.ui.pcs.aw.a().h());
                            if (d2 == null) {
                                return;
                            }
                            arrayList3.add(list.get(i4).getAbsolutePath().replaceFirst(d2, d));
                            arrayList = arrayList3;
                        } else {
                            if (ak.ao(list.get(i4).getPath())) {
                                new ArrayList(list.size());
                                String d3 = a.d(ak.g());
                                String d4 = a.d(com.estrongs.android.ui.pcs.aw.a().h());
                                if (d4 == null) {
                                    return;
                                } else {
                                    arrayList3.add(list.get(i4).getAbsolutePath().replaceFirst(d3, d4));
                                }
                            }
                            arrayList = arrayList3;
                        }
                    }
                    i4++;
                    arrayList2 = arrayList;
                }
                Iterator it3 = hashMap2.values().iterator();
                while (it3.hasNext()) {
                    a((List<String>) it3.next(), (String) null, i);
                }
                if (arrayList2 != null) {
                    a(arrayList2, (String) null, i);
                }
            }
        }
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        for (int i7 = 0; i7 < list.size(); i7++) {
            arrayList4.add(list.get(i7).getPath());
            arrayList5.add(list.get(i7).getAbsolutePath());
        }
        List<String> a2 = a.a(arrayList4);
        List<String> a3 = a.a(arrayList5);
        if (a3.size() > 0 && ak.aO(a3.get(0))) {
            ArrayList arrayList6 = new ArrayList();
            ArrayList arrayList7 = new ArrayList();
            ArrayList arrayList8 = new ArrayList();
            ArrayList arrayList9 = new ArrayList();
            for (int i8 = 0; i8 < a3.size(); i8++) {
                if (!list.get(i8).getFileType().a() && ak.aO(a3.get(i8)) && av.K(a3.get(i8))) {
                    arrayList6.add("book://" + a3.get(i8).substring(1));
                    arrayList7.add(a3.get(i8));
                }
                if (!list.get(i8).getFileType().a() && ak.aO(a3.get(i8)) && av.G(a3.get(i8))) {
                    arrayList8.add("apk://" + a3.get(i8).substring(1));
                    arrayList9.add(a3.get(i8));
                }
            }
            if (arrayList6.size() > 0) {
                a(arrayList6, (String) null, i);
                if (!aw.e()) {
                    com.estrongs.fs.impl.d.b.a().d(arrayList7);
                }
            }
            if (arrayList8.size() > 0) {
                a(arrayList8, (String) null, i);
                if (!aw.e()) {
                    com.estrongs.fs.impl.a.b.a().d(arrayList9);
                }
            }
        }
        a(a2, (String) null, i);
        if (a2.size() <= 0 || a2.get(0).equals(a3.get(0))) {
            return;
        }
        a(a3, (String) null, i);
    }

    private void h(String str) {
        String d = a.d(str);
        if ("sftp://".equals(d) || "ftps://".equals(d) || "ftpes://".equals(d) || "webdav://".equals(d) || "webdavs://".equals(d)) {
            d = "ftp://";
        }
        if (j(d)) {
            this.d.add(a.a(a.c(d), 0));
        } else {
            this.d.add(d);
        }
    }

    private d i(String str) {
        return a(str, false);
    }

    private boolean j(String str) {
        return ak.E(str) == 16 || ak.E(str) == 17;
    }

    public void a(e eVar) {
        this.f2953b.add(eVar);
    }

    public void a(g gVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(gVar);
        a(arrayList);
    }

    public void a(g gVar, String str) {
        a(gVar, str, -1);
    }

    public void a(g gVar, String str, int i) {
        if (ak.aj(gVar.getPath()) && gVar.getFileType().b()) {
            b(new n(gVar.getPath().replaceFirst("SP://", "pcs://"), true), str, i);
        }
        if (ak.aq(gVar.getPath()) && gVar.getFileType().a()) {
            String d = a.d(ak.g());
            String d2 = a.d(com.estrongs.android.ui.pcs.aw.a().h());
            if (d2 == null) {
                return;
            } else {
                b(new n(gVar.getAbsolutePath().replaceFirst(d2, d), false), str, i);
            }
        } else if (ak.ao(gVar.getPath()) && gVar.getFileType().a()) {
            String d3 = a.d(ak.g());
            String d4 = a.d(com.estrongs.android.ui.pcs.aw.a().h());
            if (d4 == null) {
                return;
            } else {
                b(new n(gVar.getAbsolutePath().replaceFirst(d3, d4), false), str, i);
            }
        }
        b(gVar, str, i);
    }

    public void a(String str) {
        a(str, -1);
    }

    public void a(String str, int i) {
        if (str == null) {
            return;
        }
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            a(arrayList, i);
        } catch (Exception e) {
        }
    }

    public void a(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        a(arrayList, str2, -1);
        if (FileExplorerActivity.E() != null) {
            FileExplorerActivity.E().b(arrayList);
        }
    }

    public void a(String str, String str2, String str3) {
        a(str, str2, str3, -1);
    }

    public void a(String str, String str2, String str3, int i) {
        String f = a.f(str);
        String f2 = a.f(str2);
        d i2 = i(f);
        if (i2 != null) {
            i2.b(a.b(f));
            int a2 = a(i2.a(), f);
            if (a2 >= 0) {
                g gVar = i2.a().get(a2);
                gVar.setName(a.b(f2));
                if ((gVar instanceof m) && str3 != null) {
                    ((m) gVar).setDisplayName(str3);
                }
            }
        }
        if (i == -1) {
            i = a.h(f);
        }
        if ((i & 4) == 4) {
            d();
        }
        b(f, f2, i);
    }

    public void a(String str, List<g> list, boolean z) {
        if (!ak.by(str) || list == null) {
            return;
        }
        String f = a.f(str);
        synchronized (this.f2952a) {
            d a2 = a(f, true);
            if (z) {
                d e = e(f);
                if (e == null) {
                    return;
                } else {
                    e.a().addAll(list);
                }
            } else {
                if (a2.a(a.b(f)) != null) {
                    a(f, true, true, (String) null);
                }
                d dVar = new d();
                dVar.a(list);
                a2.a(a.b(f), dVar);
                this.e.add(f);
            }
            this.f += list.size();
            if (list.size() > 0 && ak.au(list.get(0).getPath()) && list.get(0).getFileType().b()) {
                d(list);
            }
            if (list.size() > 0 && (ak.aq(list.get(0).getPath()) || ak.ao(list.get(0).getPath()))) {
                e(list);
            }
            if (this.d.contains(a.d(f))) {
                this.d.remove(a.d(f));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, boolean z, String str2) {
        a(str, z, false, str2);
    }

    protected void a(String str, boolean z, boolean z2, String str2) {
        int a2;
        synchronized (this.f2952a) {
            d e = str2 != null ? e(str2) : i(str);
            if (e != null) {
                String b2 = a.b(str);
                if (!z && e.a(b2) == null) {
                    this.e.remove(str);
                    return;
                }
                if (z || e.a(b2).c().size() == 0) {
                    d b3 = e.b(b2);
                    this.e.remove(str);
                    Iterator<String> it = this.e.iterator();
                    while (it.hasNext()) {
                        if (it.next().indexOf(str) == 0) {
                            it.remove();
                        }
                    }
                    this.f -= a(b3);
                    if (!z) {
                        this.f -= e.a().size();
                        e.a((List<g>) null);
                        this.e.remove(a.a(str));
                        h(a.a(str));
                    } else if (!z2 && (a2 = a(e.a(), str)) >= 0) {
                        e.a().remove(a2);
                        this.f--;
                    }
                } else {
                    d a3 = e.a(b2);
                    this.e.remove(str);
                    this.f -= a3.a().size();
                    a3.a((List<g>) null);
                    h(str);
                }
            } else {
                this.e.remove(str);
            }
        }
    }

    public void a(List<g> list) {
        b(list, -1);
    }

    public void a(List<String> list, int i) {
        try {
            List<String> a2 = a.a(list);
            if (a2.size() > 0 && ak.aO(a2.get(0))) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                ArrayList arrayList4 = new ArrayList();
                for (int i2 = 0; i2 < a2.size(); i2++) {
                    File file = new File(a2.get(i2));
                    if (!file.isDirectory() && ak.aO(a2.get(i2)) && av.K(a2.get(i2))) {
                        arrayList.add("book://" + a2.get(i2).substring(1));
                        arrayList2.add(a2.get(i2));
                    }
                    if (!file.isDirectory() && ak.aO(a2.get(i2)) && av.G(a2.get(i2))) {
                        arrayList3.add("apk://" + a2.get(i2).substring(1));
                        arrayList4.add(a2.get(i2));
                    }
                }
                if (arrayList.size() > 0 && !aw.e()) {
                    com.estrongs.fs.impl.d.b.a().e(arrayList2);
                }
                if (arrayList3.size() > 0 && !aw.e()) {
                    com.estrongs.fs.impl.a.b.a().e(arrayList4);
                }
            }
            e(a2, i);
        } catch (Exception e) {
        }
    }

    public Set<String> b(List<String> list) {
        HashSet hashSet = new HashSet();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return hashSet;
            }
            hashSet.add(a.a(list.get(i2)));
            i = i2 + 1;
        }
    }

    public void b() {
        this.f2952a.b();
        this.e.clear();
        this.d.clear();
        this.f = 0;
        this.g.clear();
        this.h.clear();
    }

    public void b(e eVar) {
        this.f2953b.remove(eVar);
    }

    public void b(g gVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(gVar);
        c(arrayList);
    }

    public void b(String str) {
        try {
            String a2 = a.a(a.f(str));
            h(a2);
            a(a2, 0, (List<String>) null);
        } catch (Exception e) {
        }
    }

    public void b(List<g> list, int i) {
        int i2 = 0;
        if (list.size() < 1) {
            return;
        }
        d(list, i);
        if (ak.aq(list.get(0).getPath())) {
            ArrayList arrayList = new ArrayList(list.size());
            String d = a.d(ak.g());
            String d2 = a.d(com.estrongs.android.ui.pcs.aw.a().h());
            if (d2 != null) {
                while (i2 < list.size()) {
                    arrayList.add(new n(list.get(i2).getAbsolutePath().replaceFirst(d2, d), list.get(i2).getFileType().b()));
                    i2++;
                }
                d(arrayList, i);
                return;
            }
            return;
        }
        if (ak.ao(list.get(0).getPath())) {
            ArrayList arrayList2 = new ArrayList(list.size());
            String d3 = a.d(ak.g());
            String d4 = a.d(com.estrongs.android.ui.pcs.aw.a().h());
            if (d4 != null) {
                while (i2 < list.size()) {
                    arrayList2.add(new n(list.get(i2).getAbsolutePath().replaceFirst(d3, d4), list.get(i2).getFileType().b()));
                    i2++;
                }
                d(arrayList2, i);
            }
        }
    }

    public void c() {
        a("/", true, (String) null);
    }

    public void c(String str) {
        h(a.f(str));
    }

    public void c(List<g> list) {
        c(list, -1);
    }

    public void c(List<g> list, int i) {
        if (list == null || list.size() < 1) {
            return;
        }
        f(list, i);
        if (ak.aj(list.get(0).getPath()) && ak.aA(list.get(0).getPath())) {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < list.size(); i2++) {
                if (list.get(i2).getPath() != null) {
                    arrayList.add(new n(list.get(i2).getPath().replaceFirst("SP://", "pcs://")));
                }
            }
            f(arrayList, i);
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (list.get(i3).getFileType() != null && list.get(i3).getFileType().a()) {
                arrayList2.add(list.get(i3).getPath());
            }
        }
        if (FileExplorerActivity.E() != null) {
            FileExplorerActivity.E().b(arrayList2);
        }
    }

    public void d() {
        a("gallery://", true, (String) null);
    }

    public boolean d(String str) {
        return !this.d.contains(a.d(a.f(str)));
    }

    public d e(String str) {
        List<String> c2 = a.c(a.f(str));
        if (c2.size() == 0) {
            return null;
        }
        if (c2.size() >= 1 && ("sftp".equals(c2.get(0)) || "ftps".equals(c2.get(0)) || "ftpes".equals(c2.get(0)) || "webdav".equals(c2.get(0)) || "webdavs".equals(c2.get(0)))) {
            c2.set(0, "ftp");
        }
        d dVar = this.f2952a;
        synchronized (this.f2952a) {
            for (int i = 0; i < c2.size(); i++) {
                dVar = dVar.a(c2.get(i));
                if (dVar == null) {
                    return null;
                }
            }
            return dVar;
        }
    }

    public void e() {
        b();
        this.f2953b.clear();
        c = null;
        this.i = true;
    }

    public String f(String str) {
        String f = a.f(str);
        List<String> c2 = a.c(f);
        if (c2.size() == 0) {
            return f;
        }
        if (c2.size() >= 1 && ("sftp".equals(c2.get(0)) || "ftps".equals(c2.get(0)) || "ftpes".equals(c2.get(0)) || "webdav".equals(c2.get(0)) || "webdavs".equals(c2.get(0)))) {
            c2.set(0, "ftp");
        }
        d dVar = this.f2952a;
        synchronized (this.f2952a) {
            d dVar2 = dVar;
            int i = 0;
            while (i < c2.size()) {
                d a2 = dVar2.a(c2.get(i));
                if (a2 == null) {
                    String a3 = a.a(c2, i);
                    if (a(dVar2.a(), a3) != -1) {
                        return null;
                    }
                    return a3;
                }
                i++;
                dVar2 = a2;
            }
            return f;
        }
    }

    public g g(String str) {
        int a2;
        if (str == null || !ak.by(str)) {
            return null;
        }
        String f = a.f(str);
        d e = e(a.a(f));
        if (e == null || (a2 = a(e.a(), f)) < 0) {
            return null;
        }
        return e.a().get(a2);
    }
}
