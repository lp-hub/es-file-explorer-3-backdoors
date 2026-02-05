package android.support.v4.b;

/* loaded from: classes.dex */
public class c<E> {

    /* renamed from: a, reason: collision with root package name */
    private static final Object f37a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private boolean f38b;
    private int[] c;
    private Object[] d;
    private int e;

    public c() {
        this(10);
    }

    public c(int i) {
        this.f38b = false;
        int h = h(i);
        this.c = new int[h];
        this.d = new Object[h];
        this.e = 0;
    }

    private static int a(int[] iArr, int i, int i2, int i3) {
        int i4 = i - 1;
        int i5 = i + i2;
        while (i5 - i4 > 1) {
            int i6 = (i5 + i4) / 2;
            if (iArr[i6] < i3) {
                i4 = i6;
            } else {
                i5 = i6;
            }
        }
        return i5 == i + i2 ? (i + i2) ^ (-1) : iArr[i5] != i3 ? i5 ^ (-1) : i5;
    }

    private void c() {
        int i = this.e;
        int[] iArr = this.c;
        Object[] objArr = this.d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f37a) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                }
                i2++;
            }
        }
        this.f38b = false;
        this.e = i2;
    }

    static int g(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            if (i <= (1 << i2) - 12) {
                return (1 << i2) - 12;
            }
        }
        return i;
    }

    static int h(int i) {
        return g(i * 4) / 4;
    }

    public int a() {
        if (this.f38b) {
            c();
        }
        return this.e;
    }

    public E a(int i) {
        return a(i, null);
    }

    public E a(int i, E e) {
        int a2 = a(this.c, 0, this.e, i);
        return (a2 < 0 || this.d[a2] == f37a) ? e : (E) this.d[a2];
    }

    public void b() {
        int i = this.e;
        Object[] objArr = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.f38b = false;
    }

    public void b(int i) {
        int a2 = a(this.c, 0, this.e, i);
        if (a2 < 0 || this.d[a2] == f37a) {
            return;
        }
        this.d[a2] = f37a;
        this.f38b = true;
    }

    public void b(int i, E e) {
        int a2 = a(this.c, 0, this.e, i);
        if (a2 >= 0) {
            this.d[a2] = e;
            return;
        }
        int i2 = a2 ^ (-1);
        if (i2 < this.e && this.d[i2] == f37a) {
            this.c[i2] = i;
            this.d[i2] = e;
            return;
        }
        if (this.f38b && this.e >= this.c.length) {
            c();
            i2 = a(this.c, 0, this.e, i) ^ (-1);
        }
        if (this.e >= this.c.length) {
            int h = h(this.e + 1);
            int[] iArr = new int[h];
            Object[] objArr = new Object[h];
            System.arraycopy(this.c, 0, iArr, 0, this.c.length);
            System.arraycopy(this.d, 0, objArr, 0, this.d.length);
            this.c = iArr;
            this.d = objArr;
        }
        if (this.e - i2 != 0) {
            System.arraycopy(this.c, i2, this.c, i2 + 1, this.e - i2);
            System.arraycopy(this.d, i2, this.d, i2 + 1, this.e - i2);
        }
        this.c[i2] = i;
        this.d[i2] = e;
        this.e++;
    }

    public void c(int i) {
        b(i);
    }

    public void d(int i) {
        if (this.d[i] != f37a) {
            this.d[i] = f37a;
            this.f38b = true;
        }
    }

    public int e(int i) {
        if (this.f38b) {
            c();
        }
        return this.c[i];
    }

    public E f(int i) {
        if (this.f38b) {
            c();
        }
        return (E) this.d[i];
    }
}
