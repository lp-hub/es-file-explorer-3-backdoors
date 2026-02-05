package de.innosystec.unrar.unpack.ppm;

/* loaded from: classes.dex */
public class c extends d {
    private int g;
    private final a h;
    private final j i;
    private int j;
    private final j k;
    private final j l;
    private final j m;
    private final j n;
    private final j o;
    private c p;
    private final int[] q;
    private static final int f = Math.max(6, 6);

    /* renamed from: a, reason: collision with root package name */
    public static final int f3421a = (f + 2) + 4;

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f3422b = {25, 14, 9, 7, 5, 5, 4, 4, 4, 3, 3, 3, 2, 2, 2, 2};

    public c(byte[] bArr) {
        super(bArr);
        this.k = new j(null);
        this.l = new j(null);
        this.m = new j(null);
        this.n = new j(null);
        this.o = new j(null);
        this.p = null;
        this.q = new int[256];
        this.i = new j(bArr);
        this.h = new a(bArr);
    }

    private int a(b bVar, j jVar) {
        b(bVar.a().j()).c(d());
        return bVar.o()[r0.b() - 1] + 0 + bVar.j() + bVar.k() + (bVar.n()[jVar.a()] * 2) + ((bVar.i() >>> 26) & 32);
    }

    private c b(byte[] bArr) {
        if (this.p == null) {
            this.p = new c(null);
        }
        return this.p.a(bArr);
    }

    private i c(b bVar, int i) {
        int b2 = b();
        if (b2 == 256) {
            i d = bVar.d();
            bVar.m().a().c(1L);
            return d;
        }
        c b3 = b(bVar.r());
        b3.c(d());
        i iVar = bVar.c()[bVar.p()[i - 1]][((this.h.a() < b2 * 11 ? 1 : 0) * 2) + 0 + (i < b3.b() - b2 ? 1 : 0) + ((bVar.h() <= i ? 0 : 1) * 4) + bVar.k()];
        bVar.m().a().c(iVar.a());
        return iVar;
    }

    public int a(int i, int i2, int i3) {
        return ((1 << (i2 - i3)) + i) >>> i2;
    }

    public int a(b bVar, j jVar, k kVar) {
        c b2 = b(bVar.a().j());
        b2.c(bVar.a().e());
        if (b2 != null) {
            b2.a(1);
            b2.a(kVar);
            b2.a(this);
            jVar.a(b2);
        }
        return b2.e();
    }

    public a a() {
        return this.h;
    }

    public c a(byte[] bArr) {
        this.c = bArr;
        this.d = 0;
        this.i.a(bArr);
        this.h.a(bArr);
        return this;
    }

    public final void a(int i) {
        this.g = 65535 & i;
        if (this.c != null) {
            de.innosystec.unrar.b.b.a(this.c, this.d, (short) i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0186  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(b bVar) {
        int i;
        int i2;
        int b2;
        int b3 = b();
        int b4 = b() - 1;
        j jVar = new j(bVar.r());
        j jVar2 = new j(bVar.r());
        j jVar3 = new j(bVar.r());
        jVar2.c(bVar.q().e());
        while (jVar2.e() != this.h.b()) {
            jVar3.c(jVar2.e() - 6);
            j.a(jVar2, jVar3);
            jVar2.d();
        }
        jVar3.c(this.h.b());
        jVar3.d(4);
        this.h.b(4);
        int a2 = this.h.a() - jVar2.b();
        int i3 = bVar.s() != 0 ? 1 : 0;
        jVar2.b((jVar2.b() + i3) >>> 1);
        this.h.a(jVar2.b());
        do {
            jVar2.f();
            a2 -= jVar2.b();
            jVar2.b((jVar2.b() + i3) >>> 1);
            this.h.b(jVar2.b());
            jVar3.c(jVar2.e() - 6);
            if (jVar2.b() > jVar3.b()) {
                jVar.c(jVar2.e());
                k kVar = new k();
                kVar.a(jVar);
                j jVar4 = new j(bVar.r());
                j jVar5 = new j(bVar.r());
                do {
                    jVar4.c(jVar.e() - 6);
                    jVar.a(jVar4);
                    jVar.d();
                    jVar5.c(jVar.e() - 6);
                    if (jVar.e() == this.h.b()) {
                        break;
                    }
                } while (kVar.b() > jVar5.b());
                jVar.a(kVar);
            }
            b4--;
        } while (b4 != 0);
        if (jVar2.b() != 0) {
            i = a2;
            this.h.b(i - (i >>> 1));
            i2 = (b3 + 1) >>> 1;
            b2 = (b() + 1) >>> 1;
            if (i2 != b2) {
                this.h.a_(bVar.a().a(this.h.b(), i2, b2));
            }
            bVar.q().c(this.h.b());
        }
        do {
            b4++;
            jVar2.d();
        } while (jVar2.b() == 0);
        i = a2 + b4;
        a(b() - b4);
        if (b() == 1) {
            k kVar2 = new k();
            jVar3.c(this.h.b());
            kVar2.a(jVar3);
            do {
                kVar2.c(kVar2.b() >>> 1);
                i >>>= 1;
            } while (i > 1);
            bVar.a().b(this.h.b(), (b3 + 1) >>> 1);
            this.i.a(kVar2);
            bVar.q().c(this.i.e());
            return;
        }
        this.h.b(i - (i >>> 1));
        i2 = (b3 + 1) >>> 1;
        b2 = (b() + 1) >>> 1;
        if (i2 != b2) {
        }
        bVar.q().c(this.h.b());
    }

    public void a(b bVar, int i) {
        bVar.q().c(i);
        bVar.q().d(4);
        this.h.b(4);
        j a2 = this.m.a(bVar.r());
        j a3 = this.n.a(bVar.r());
        a2.c(i);
        a3.c(i - 6);
        if (a2.b() > a3.b()) {
            j.a(a2, a3);
            bVar.q().c(a3.e());
            if (a3.b() > 124) {
                a(bVar);
            }
        }
    }

    public void a(c cVar) {
        b(cVar.e());
    }

    public void a(k kVar) {
        this.i.a(kVar);
    }

    public final int b() {
        if (this.c != null) {
            this.g = de.innosystec.unrar.b.b.b(this.c, this.d) & 65535;
        }
        return this.g;
    }

    public void b(int i) {
        this.j = i;
        if (this.c != null) {
            de.innosystec.unrar.b.b.c(this.c, this.d + 8, i);
        }
    }

    public void b(b bVar) {
        j a2 = this.k.a(bVar.r());
        a2.c(this.i.e());
        bVar.h(bVar.n()[bVar.q().a()]);
        int b2 = a2.b() - 1;
        int a3 = a(bVar, a2);
        int i = bVar.l()[b2][a3];
        if (bVar.m().a(14) < i) {
            bVar.q().c(a2.e());
            a2.d(a2.b() < 128 ? 1 : 0);
            bVar.m().a().b(0L);
            bVar.m().a().a(i);
            bVar.l()[b2][a3] = ((i + 128) - a(i, 7, 2)) & 65535;
            bVar.d(1);
            bVar.g(1);
            return;
        }
        bVar.m().a().b(i);
        int a4 = (i - a(i, 7, 2)) & 65535;
        bVar.l()[b2][a3] = a4;
        bVar.m().a().a(16384L);
        bVar.e(f3422b[a4 >>> 10]);
        bVar.c(1);
        bVar.g()[a2.a()] = bVar.f();
        bVar.d(0);
        bVar.q().c(0);
    }

    public void b(b bVar, int i) {
        j a2 = this.o.a(bVar.r());
        a2.c(i);
        bVar.q().c(i);
        bVar.q().d(4);
        this.h.b(4);
        if (a2.b() > 124) {
            a(bVar);
        }
        bVar.b(1);
        bVar.f(bVar.e());
    }

    public j c() {
        return this.i;
    }

    @Override // de.innosystec.unrar.unpack.ppm.d
    public void c(int i) {
        super.c(i);
        this.i.c(i + 2);
        this.h.c(i + 2);
    }

    public boolean c(b bVar) {
        int b2;
        int i = 0;
        int b3 = b() - bVar.h();
        i c = c(bVar, b3);
        e m = bVar.m();
        j a2 = this.k.a(bVar.r());
        j a3 = this.l.a(bVar.r());
        a2.c(this.h.b() - 6);
        int i2 = b3;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            a2.f();
            if (bVar.g()[a2.a()] != bVar.f()) {
                b2 = a2.b() + i3;
                int i5 = i4 + 1;
                this.q[i4] = a2.e();
                int i6 = i2 - 1;
                if (i6 == 0) {
                    break;
                }
                i2 = i6;
                i4 = i5;
                i3 = b2;
            }
        }
        m.a().a(b2);
        long b4 = m.b();
        if (b4 >= m.a().c()) {
            return false;
        }
        a2.c(this.q[0]);
        if (b4 < b2) {
            int i7 = 0;
            while (true) {
                i7 += a2.b();
                if (i7 > b4) {
                    break;
                }
                i++;
                a2.c(this.q[i]);
            }
            m.a().a(i7);
            m.a().b(i7 - a2.b());
            c.b();
            b(bVar, a2.e());
        } else {
            m.a().b(b2);
            m.a().a(m.a().c());
            int b5 = b() - bVar.h();
            int i8 = -1;
            do {
                i8++;
                a3.c(this.q[i8]);
                bVar.g()[a3.a()] = bVar.f();
                b5--;
            } while (b5 != 0);
            c.d((int) m.a().c());
            bVar.c(b());
        }
        return true;
    }

    public int d() {
        if (this.c != null) {
            this.j = de.innosystec.unrar.b.b.c(this.c, this.d + 8);
        }
        return this.j;
    }

    public boolean d(b bVar) {
        e m = bVar.m();
        m.a().c(this.h.a());
        j jVar = new j(bVar.r());
        jVar.c(this.h.b());
        long b2 = m.b();
        if (b2 >= m.a().c()) {
            return false;
        }
        int b3 = jVar.b();
        if (b2 < b3) {
            m.a().a(b3);
            bVar.d(((long) (b3 * 2)) > m.a().c() ? 1 : 0);
            bVar.g(bVar.j());
            int i = b3 + 4;
            bVar.q().c(jVar.e());
            bVar.q().b(i);
            this.h.b(4);
            if (i > 124) {
                a(bVar);
            }
            m.a().b(0L);
            return true;
        }
        if (bVar.q().e() == 0) {
            return false;
        }
        bVar.d(0);
        int b4 = b();
        int i2 = b4 - 1;
        do {
            b3 += jVar.f().b();
            if (b3 > b2) {
                m.a().b(b3 - jVar.b());
                m.a().a(b3);
                a(bVar, jVar.e());
                return true;
            }
            i2--;
        } while (i2 != 0);
        bVar.h(bVar.n()[bVar.q().a()]);
        m.a().b(b3);
        bVar.g()[jVar.a()] = bVar.f();
        bVar.c(b4);
        bVar.q().c(0);
        int i3 = b4 - 1;
        do {
            bVar.g()[jVar.d().a()] = bVar.f();
            i3--;
        } while (i3 != 0);
        m.a().a(m.a().c());
        return true;
    }

    public String toString() {
        return "PPMContext[\n  pos=" + this.d + "\n  size=" + f3421a + "\n  numStats=" + b() + "\n  Suffix=" + d() + "\n  freqData=" + this.h + "\n  oneState=" + this.i + "\n]";
    }
}
