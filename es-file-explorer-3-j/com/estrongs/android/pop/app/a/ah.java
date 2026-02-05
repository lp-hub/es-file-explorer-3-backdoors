package com.estrongs.android.pop.app.a;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ah {
    private int f;

    /* renamed from: a, reason: collision with root package name */
    private Object f400a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private ag f401b = null;
    private List<Boolean> c = null;
    private int d = -1;
    private int g = 0;
    private com.estrongs.android.pop.app.a.a.c e = new com.estrongs.android.pop.app.a.a.a();

    public ah() {
        this.e.d(this.g);
    }

    public void a() {
        synchronized (this.f400a) {
            if (this.d < 0) {
                this.d = this.e.e(0);
            }
        }
        this.e.b(j());
        this.e.c(this.d);
    }

    public void a(int i) {
        this.f = i;
        if (i == 0) {
            this.e = new com.estrongs.android.pop.app.a.a.a();
        } else {
            this.e = new com.estrongs.android.pop.app.a.a.b();
        }
        this.e.d(this.g);
        this.e.b(j());
        this.e.c(this.d);
    }

    public void a(int i, int i2) {
        af afVar = this.f401b.c().get(i);
        af afVar2 = this.d != -1 ? this.f401b.c().get(this.d) : null;
        this.f401b.a(afVar, i2);
        if (this.d != -1) {
            this.d = this.f401b.c().indexOf(afVar2);
            this.e.c(this.d);
        }
    }

    public void a(int i, boolean z) {
        if (i < 0 || i >= this.c.size()) {
            return;
        }
        this.c.set(i, Boolean.valueOf(z));
    }

    public void a(List<String> list) {
        synchronized (this.f400a) {
            if (list != null) {
                if (list.size() != 0) {
                    j();
                    for (int i = 0; i < list.size(); i++) {
                        this.f401b.b(list.get(i));
                        this.c.add(true);
                    }
                    this.e.b(j());
                    this.e.c(this.d);
                }
            }
        }
    }

    public boolean a(ag agVar) {
        if (agVar == null) {
            this.f401b = agVar;
            this.d = -1;
        } else {
            synchronized (this.f400a) {
                this.f401b = agVar;
                this.d = -1;
                this.c = new ArrayList();
                for (int i = 0; i < agVar.c().size(); i++) {
                    this.c.add(true);
                }
                this.e.b(agVar.c().size());
                this.e.c();
            }
        }
        return true;
    }

    public int b() {
        int f = this.e.f();
        while (!this.c.get(f).booleanValue()) {
            try {
                f++;
            } catch (Exception e) {
                return 0;
            }
        }
        return f;
    }

    public void b(int i) {
        this.g = i;
        this.e.d(i);
    }

    public void b(List<af> list) {
        synchronized (this.f400a) {
            if (list.size() < 0 || this.f401b == null) {
                return;
            }
            af afVar = this.f401b.c().get(this.d);
            for (af afVar2 : list) {
                int indexOf = this.f401b.c().indexOf(afVar2);
                if (this.c.size() > indexOf) {
                    this.c.remove(indexOf);
                }
                this.f401b.a(afVar2);
            }
            this.d = this.f401b.c().indexOf(afVar);
            if (this.d < 0) {
            }
            if (this.f == 1 && this.d < 0) {
                this.d = 0;
            }
            this.e.b(j());
            this.e.c(this.d);
        }
    }

    public int c() {
        return this.f;
    }

    public boolean c(int i) {
        return i >= 0 && this.f401b != null && i < this.f401b.c().size();
    }

    public int d() {
        return this.g;
    }

    public boolean d(int i) {
        if (!c(i)) {
            return false;
        }
        this.d = i;
        this.e.c(this.d);
        return true;
    }

    public ag e() {
        return this.f401b;
    }

    public int f() {
        if (this.d == -1) {
            a();
        }
        return this.d;
    }

    public af g() {
        if (f() == -1 || this.f401b == null || this.f401b.c().size() < 1) {
            return null;
        }
        return this.f401b.c().get(this.d);
    }

    public boolean h() {
        return this.f401b != null;
    }

    public boolean i() {
        return this.f401b == null || this.f401b.c().size() == 0;
    }

    public int j() {
        if (this.f401b == null) {
            return 0;
        }
        return this.f401b.c().size();
    }

    public int k() {
        return this.e.d();
    }

    public int l() {
        return this.e.e();
    }

    public int m() {
        return this.e.e(this.d + 1);
    }

    public boolean n() {
        this.d = m();
        if (this.d == -1) {
            return false;
        }
        this.e.c(this.d);
        return true;
    }

    public int o() {
        return this.e.e((this.d - 1) % j());
    }
}
