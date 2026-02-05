package org.mozilla.a.a;

/* loaded from: classes.dex */
public abstract class u {

    /* renamed from: b, reason: collision with root package name */
    z[] f3503b;
    l[] c;
    k d;
    byte[] e;
    int[] f;
    int g;
    int h;
    boolean i;
    boolean j;
    boolean k;

    public u() {
        this.d = new k();
        this.e = new byte[16];
        this.f = new int[16];
        a(0);
        a();
    }

    public u(int i) {
        this.d = new k();
        this.e = new byte[16];
        this.f = new int[16];
        a(i);
        a();
    }

    public void a() {
        this.j = this.k;
        this.i = false;
        this.g = this.h;
        for (int i = 0; i < this.g; i++) {
            this.e[i] = 0;
            this.f[i] = i;
        }
        this.d.a();
    }

    protected void a(int i) {
        if (i < 0 || i >= 6) {
            i = 0;
        }
        this.f3503b = null;
        this.c = null;
        if (i == 4) {
            this.f3503b = new z[]{new y(), new f(), new r(), new m(), new g(), new w(), new x()};
            this.c = new l[]{null, new a(), null, new d(), null, null, null};
        } else if (i == 5) {
            this.f3503b = new z[]{new y(), new j(), new t(), new g(), new w(), new x()};
        } else if (i == 3) {
            this.f3503b = new z[]{new y(), new o(), new n(), new r(), new p(), new g(), new w(), new x()};
        } else if (i == 1) {
            this.f3503b = new z[]{new y(), new v(), new i(), new s(), new g(), new w(), new x()};
        } else if (i == 2) {
            this.f3503b = new z[]{new y(), new o(), new n(), new f(), new r(), new p(), new m(), new g(), new w(), new x()};
            this.c = new l[]{null, new e(), null, new a(), null, null, new d(), null, null, null};
        } else if (i == 0) {
            this.f3503b = new z[]{new y(), new v(), new i(), new s(), new j(), new t(), new f(), new m(), new o(), new n(), new r(), new p(), new g(), new w(), new x()};
            this.c = new l[]{null, null, new b(), null, new c(), null, new a(), new d(), new e(), null, null, null, null, null, null};
        }
        this.k = this.c != null;
        this.h = this.f3503b.length;
    }

    public abstract void a(String str);

    public boolean a(byte[] bArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            byte b2 = bArr[i2];
            int i3 = 0;
            while (i3 < this.g) {
                byte a2 = z.a(this.f3503b[this.f[i3]], b2, this.e[i3]);
                if (a2 == 2) {
                    a(this.f3503b[this.f[i3]].d());
                    this.i = true;
                    return this.i;
                }
                if (a2 == 1) {
                    this.g--;
                    if (i3 < this.g) {
                        this.f[i3] = this.f[this.g];
                        this.e[i3] = this.e[this.g];
                    }
                } else {
                    this.e[i3] = a2;
                    i3++;
                }
            }
            if (this.g <= 1) {
                if (1 == this.g) {
                    a(this.f3503b[this.f[0]].d());
                }
                this.i = true;
                return this.i;
            }
            int i4 = 0;
            int i5 = 0;
            for (int i6 = 0; i6 < this.g; i6++) {
                if (!this.f3503b[this.f[i6]].e() && !this.f3503b[this.f[i6]].e()) {
                    i5++;
                    i4 = i6;
                }
            }
            if (1 == i5) {
                a(this.f3503b[this.f[i4]].d());
                this.i = true;
                return this.i;
            }
        }
        if (this.j) {
            b(bArr, i);
        }
        return this.i;
    }

    public void b() {
        if (this.i) {
            return;
        }
        if (this.g == 2) {
            if (this.f3503b[this.f[0]].d().equals("GB18030")) {
                a(this.f3503b[this.f[1]].d());
                this.i = true;
            } else if (this.f3503b[this.f[1]].d().equals("GB18030")) {
                a(this.f3503b[this.f[0]].d());
                this.i = true;
            }
        }
        if (this.j) {
            b(null, 0, true);
        }
    }

    public void b(byte[] bArr, int i) {
        b(bArr, i, false);
    }

    public void b(byte[] bArr, int i, boolean z) {
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < this.g; i5++) {
            if (this.c[this.f[i5]] != null) {
                i3++;
            }
            if (!this.f3503b[this.f[i5]].e() && !this.f3503b[this.f[i5]].d().equals("GB18030")) {
                i4++;
            }
        }
        this.j = i3 > 1;
        if (this.j) {
            this.j = this.d.a(bArr, i);
            if (((z && this.d.c()) || this.d.b()) && i3 == i4) {
                this.d.d();
                int i6 = -1;
                float f = 0.0f;
                for (int i7 = 0; i7 < this.g; i7++) {
                    if (this.c[this.f[i7]] != null && !this.f3503b[this.f[i7]].d().equals("Big5")) {
                        float a2 = this.d.a(this.c[this.f[i7]].a(), this.c[this.f[i7]].b(), this.c[this.f[i7]].c(), this.c[this.f[i7]].d());
                        int i8 = i2 + 1;
                        if (i2 == 0 || f > a2) {
                            f = a2;
                            i2 = i8;
                            i6 = i7;
                        } else {
                            i2 = i8;
                        }
                    }
                }
                if (i6 >= 0) {
                    a(this.f3503b[this.f[i6]].d());
                    this.i = true;
                }
            }
        }
    }

    public String[] c() {
        if (this.g <= 0) {
            return new String[]{"nomatch"};
        }
        String[] strArr = new String[this.g];
        for (int i = 0; i < this.g; i++) {
            strArr[i] = this.f3503b[this.f[i]].d();
        }
        return strArr;
    }
}
