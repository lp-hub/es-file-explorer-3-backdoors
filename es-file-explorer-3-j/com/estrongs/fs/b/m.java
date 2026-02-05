package com.estrongs.fs.b;

import java.text.Collator;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class m extends com.estrongs.a.a {

    /* renamed from: a, reason: collision with root package name */
    LinkedList<String> f3011a = new LinkedList<>();

    /* renamed from: b, reason: collision with root package name */
    Collator f3012b = Collator.getInstance();
    private com.estrongs.fs.d c;
    private int d;
    private List<String> e;
    private boolean f;

    public m(com.estrongs.fs.d dVar, int i, List<String> list, boolean z) {
        this.c = dVar;
        this.d = i;
        this.e = list;
        this.f = z;
    }

    private void a(List<String> list) {
        try {
            LinkedList linkedList = new LinkedList();
            for (int i = 0; i < list.size() && !taskStopped(); i++) {
                linkedList.clear();
                if (this.c.h(list.get(i))) {
                    List<com.estrongs.fs.g> a2 = this.c.a(list.get(i), true);
                    if (a2 == null) {
                        continue;
                    } else {
                        for (com.estrongs.fs.g gVar : a2) {
                            String absolutePath = gVar.getAbsolutePath();
                            if (gVar.getFileType().a()) {
                                String d = com.estrongs.android.util.ak.d(absolutePath);
                                if (!d.equals(".") && !d.equals("..") && this.f) {
                                    linkedList.add(absolutePath);
                                }
                            } else if (this.d == 0 && a(absolutePath)) {
                                this.f3011a.add(absolutePath);
                            } else if (this.d == 1 && com.estrongs.android.util.av.f(absolutePath)) {
                                this.f3011a.add(absolutePath);
                            }
                        }
                    }
                } else if (this.d == 0 && a(list.get(i))) {
                    this.f3011a.add(list.get(i));
                } else if (this.d == 1 && com.estrongs.android.util.av.f(list.get(i))) {
                    this.f3011a.add(list.get(i));
                }
                if (taskStopped()) {
                    return;
                }
                if (linkedList.size() > 0) {
                    a(linkedList);
                }
            }
        } catch (Exception e) {
        }
    }

    public static boolean a(String str) {
        return com.estrongs.android.util.av.e(str) && (com.estrongs.android.util.ak.aO(str) || (com.estrongs.android.util.ak.aP(str) && !str.endsWith(".m3u")));
    }

    public List<String> a() {
        return this.f3011a;
    }

    @Override // com.estrongs.a.a
    public boolean task() {
        a(this.e);
        Collections.sort(this.f3011a, new n(this));
        com.estrongs.android.pop.app.a.aj.a().e();
        return true;
    }
}
