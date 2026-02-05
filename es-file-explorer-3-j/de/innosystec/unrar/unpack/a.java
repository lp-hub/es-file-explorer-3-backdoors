package de.innosystec.unrar.unpack;

import de.innosystec.unrar.rarfile.g;
import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private final de.innosystec.unrar.a f3408a;

    /* renamed from: b, reason: collision with root package name */
    private long f3409b;
    private boolean c;
    private boolean d;
    private InputStream e;
    private OutputStream f;
    private g g;
    private boolean h;
    private boolean i;
    private boolean j;
    private long k;
    private long l;
    private long m;
    private long n;
    private long o;
    private long p;
    private long q;
    private long r;
    private long s;
    private long t;
    private int u;
    private int v;
    private int w;
    private char x;

    public a(de.innosystec.unrar.a aVar) {
        this.f3408a = aVar;
    }

    public int a(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5 = 0;
        int i6 = 0;
        int i7 = i2;
        while (i7 > 0) {
            if (this.f3408a.k() != null && this.f3408a.k().b()) {
                return -1;
            }
            int read = this.e.read(bArr, i, ((long) i7) > this.f3409b ? (int) this.f3409b : i7);
            if (read < 0) {
                throw new EOFException();
            }
            if (this.g.u()) {
                this.t = de.innosystec.unrar.a.a.a((int) this.t, bArr, i, read);
            }
            this.n += read;
            i4 = i5 + read;
            i += read;
            i7 -= read;
            this.f3409b -= read;
            this.f3408a.a(read);
            if (this.f3409b != 0 || !this.g.u()) {
                i3 = read;
                break;
            }
            if (!de.innosystec.unrar.e.a(this.f3408a, this)) {
                this.j = true;
                return -1;
            }
            i5 = i4;
            i6 = read;
        }
        i3 = i6;
        i4 = i5;
        return i3 == -1 ? i3 : i4;
    }

    public long a() {
        return this.t;
    }

    public void a(long j) {
        this.s = j;
    }

    public void a(g gVar) {
        long h = gVar.h() + gVar.e();
        this.f3409b = gVar.s();
        this.e = new de.innosystec.unrar.b.d(this.f3408a.b(), h, this.f3409b + h);
        this.g = gVar;
        this.n = 0L;
        this.m = 0L;
        this.t = -1L;
    }

    public void a(OutputStream outputStream) {
        this.f = outputStream;
        this.f3409b = 0L;
        this.c = false;
        this.d = false;
        this.h = false;
        this.i = false;
        this.j = false;
        this.u = 0;
        this.v = 0;
        this.k = 0L;
        this.o = 0L;
        this.n = 0L;
        this.m = 0L;
        this.l = 0L;
        this.t = -1L;
        this.s = -1L;
        this.r = -1L;
        this.w = -1;
        this.g = null;
        this.x = (char) 0;
        this.q = 0L;
        this.p = 0L;
    }

    public long b() {
        return this.s;
    }

    public void b(byte[] bArr, int i, int i2) {
        if (!this.c) {
            this.f.write(bArr, i, i2);
        }
        this.o += i2;
        if (this.d) {
            return;
        }
        if (this.f3408a.g()) {
            this.s = de.innosystec.unrar.a.a.a((short) this.s, bArr, i2);
        } else {
            this.s = de.innosystec.unrar.a.a.a((int) this.s, bArr, i, i2);
        }
    }

    public g c() {
        return this.g;
    }
}
