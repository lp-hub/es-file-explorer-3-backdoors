package com.estrongs.android.ui.h;

import android.content.Context;
import com.estrongs.android.pop.q;
import com.estrongs.android.ui.pcs.aw;
import com.estrongs.android.util.aa;
import com.estrongs.android.util.ai;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.x;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Random;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static a f2236a = null;

    /* renamed from: b, reason: collision with root package name */
    private Context f2237b;
    private List<c> c;
    private Object d = new Object();

    public a(Context context) {
        this.f2237b = context;
        d();
        if (b(true)) {
            f();
        }
    }

    public static a a(Context context) {
        if (f2236a == null) {
            f2236a = new a(context);
        }
        return f2236a;
    }

    private boolean b(boolean z) {
        if (System.currentTimeMillis() - q.a(this.f2237b).aF() < 86400000) {
            return false;
        }
        return z ? ai.b(this.f2237b) : ai.c(this.f2237b);
    }

    public static void c() {
        try {
            if (f2236a != null) {
                List<c> list = f2236a.c;
                if (list != null) {
                    for (c cVar : list) {
                        if (cVar != null) {
                            cVar.i();
                        }
                    }
                }
                f2236a = null;
            }
        } catch (Exception e) {
        }
    }

    private void d() {
        this.c = c.b(ak.b(this.f2237b) + "pushInfo.dat");
    }

    private void e() {
        if (this.c == null || a() || !ai.b(this.f2237b)) {
            return;
        }
        for (c cVar : this.c) {
            if (cVar != null) {
                cVar.c(this.f2237b);
            }
        }
    }

    private void f() {
        String locale = Locale.getDefault().toString();
        int indexOf = locale.indexOf(95);
        if (indexOf > 0) {
            locale = locale.substring(0, indexOf);
        }
        if (com.estrongs.android.pop.esclasses.c.f1130a != null) {
            locale = (com.estrongs.android.pop.esclasses.c.f1130a.equalsIgnoreCase("CN") || com.estrongs.android.pop.esclasses.c.f1130a.equalsIgnoreCase("TW")) ? "cn" : "en";
        }
        String str = ak.b(this.f2237b) + "pushInfo.dat";
        x xVar = new x("http://www.estrongs.com/console/service/0918/?lang=" + locale);
        b bVar = new b(this, str);
        xVar.a(str + ".tmp");
        xVar.a((aa) bVar);
        xVar.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        q.a(this.f2237b).aE();
        String str = ak.b(this.f2237b) + "pushInfo.dat";
        synchronized (this.d) {
            this.c = c.b(str);
            if (!a()) {
                e();
            }
        }
    }

    public c a(int i) {
        synchronized (this.d) {
            if (this.c == null || !a()) {
                return null;
            }
            LinkedList linkedList = new LinkedList();
            for (c cVar : this.c) {
                if (!cVar.f(this.f2237b) && !cVar.i(this.f2237b)) {
                    if (cVar.g()) {
                        if (!"action_recomm_pcs".equals(cVar.b())) {
                            linkedList.add(cVar);
                        } else if (aw.a().d() || !aw.a().c()) {
                            linkedList.add(cVar);
                        }
                    } else if (cVar.e() > i && !cVar.d(this.f2237b)) {
                        linkedList.add(cVar);
                    }
                }
            }
            if (linkedList.size() == 0) {
                return null;
            }
            Iterator it = linkedList.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                i2 = ((c) it.next()).f() + i2;
            }
            if (i2 == 0) {
                return null;
            }
            int nextInt = new Random().nextInt(i2);
            Iterator it2 = linkedList.iterator();
            int i3 = nextInt;
            while (it2.hasNext()) {
                c cVar2 = (c) it2.next();
                i3 -= cVar2.f();
                if (i3 < 0) {
                    return cVar2;
                }
            }
            return null;
        }
    }

    public void a(boolean z) {
        if (b(z)) {
            f();
        }
    }

    public boolean a() {
        synchronized (this.d) {
            if (this.c == null) {
                return false;
            }
            boolean z = true;
            Iterator<c> it = this.c.iterator();
            while (it.hasNext()) {
                c next = it.next();
                z = (next == null || !next.b(this.f2237b)) ? false : z;
            }
            return z;
        }
    }

    public c b() {
        c cVar;
        synchronized (this.d) {
            if (this.c == null || this.c.size() <= 0) {
                a(false);
            } else {
                for (int i = 0; i < this.c.size(); i++) {
                    cVar = this.c.get(i);
                    if ("com.baidu.appsearch".equals(cVar.b())) {
                        break;
                    }
                }
            }
            cVar = null;
        }
        return cVar;
    }
}
