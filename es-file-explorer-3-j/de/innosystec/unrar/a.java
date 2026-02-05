package de.innosystec.unrar;

import de.innosystec.unrar.exception.RarException;
import de.innosystec.unrar.rarfile.UnrarHeadertype;
import de.innosystec.unrar.rarfile.f;
import de.innosystec.unrar.rarfile.g;
import de.innosystec.unrar.rarfile.i;
import de.innosystec.unrar.rarfile.j;
import de.innosystec.unrar.rarfile.k;
import de.innosystec.unrar.rarfile.l;
import de.innosystec.unrar.rarfile.n;
import de.innosystec.unrar.rarfile.o;
import de.innosystec.unrar.rarfile.p;
import de.innosystec.unrar.rarfile.q;
import java.io.Closeable;
import java.io.File;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class a implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    private static Logger f3396a = Logger.getLogger(a.class.getName());

    /* renamed from: b, reason: collision with root package name */
    private File f3397b;
    private de.innosystec.unrar.b.a c;
    private d d;
    private final de.innosystec.unrar.unpack.a e;
    private de.innosystec.unrar.unpack.b j;
    private int l;
    private String q;
    private boolean r;
    private com.estrongs.io.a.b t;
    private c u;
    private final List<de.innosystec.unrar.rarfile.b> f = new ArrayList();
    private l g = null;
    private k h = null;
    private f i = null;
    private long k = -1;
    private boolean m = false;
    private int n = 0;
    private long o = 0;
    private long p = 0;
    private Map<String, g> s = new LinkedHashMap();

    public a(File file, String str, c cVar, d dVar, boolean z) {
        this.q = "GBK";
        this.r = false;
        this.q = str;
        this.u = cVar;
        this.r = z;
        a(file);
        this.d = dVar;
        this.e = new de.innosystec.unrar.unpack.a(this);
    }

    private void b(g gVar, OutputStream outputStream) {
        this.e.a(outputStream);
        this.e.a(gVar);
        this.e.a(g() ? 0L : -1L);
        if (this.j == null) {
            this.j = new de.innosystec.unrar.unpack.b(this.e);
        }
        if (!gVar.w()) {
            this.j.a((byte[]) null);
        }
        this.j.a(gVar.t());
        try {
            this.j.a(gVar.r(), gVar.w());
            if (this.t == null || !this.t.b()) {
                g c = this.e.c();
                long a2 = c.u() ? this.e.a() ^ (-1) : this.e.b() ^ (-1);
                int m = c.m();
                if (a2 != m) {
                    throw new RarException(RarException.RarExceptionType.crcError, c.n() + " expectedCRC = " + m + ",actualCRC = " + a2);
                }
            }
        } catch (Exception e) {
            this.j.b();
            if (!(e instanceof RarException)) {
                throw new RarException(e);
            }
            throw ((RarException) e);
        }
    }

    private void l() {
        f fVar;
        this.g = null;
        this.h = null;
        this.i = null;
        this.f.clear();
        this.s.clear();
        this.l = 0;
        long length = this.f3397b.length();
        while (true) {
            if (this.u != null && this.u.a()) {
                this.f.clear();
                this.s.clear();
                return;
            }
            byte[] bArr = new byte[7];
            long a2 = this.c.a();
            if (a2 >= length || this.c.a(bArr, 7) == 0) {
                return;
            }
            de.innosystec.unrar.rarfile.b bVar = new de.innosystec.unrar.rarfile.b(bArr);
            bVar.a(a2);
            UnrarHeadertype i = bVar.i();
            if (i == null) {
                throw new RarException(RarException.RarExceptionType.wrongHeaderType);
            }
            switch (b.f3400b[i.ordinal()]) {
                case 5:
                    this.g = new l(bVar);
                    if (!this.g.l()) {
                        throw new RarException(RarException.RarExceptionType.badRarArchive);
                    }
                    this.f.add(this.g);
                    break;
                case 6:
                    int i2 = bVar.c() ? 7 : 6;
                    byte[] bArr2 = new byte[i2];
                    this.c.a(bArr2, i2);
                    k kVar = new k(bVar, bArr2);
                    this.f.add(kVar);
                    this.h = kVar;
                    if (!this.h.o()) {
                        break;
                    } else {
                        throw new RarException(RarException.RarExceptionType.rarEncryptedException);
                    }
                case 7:
                    byte[] bArr3 = new byte[8];
                    this.c.a(bArr3, 8);
                    this.f.add(new o(bVar, bArr3));
                    break;
                case 8:
                    byte[] bArr4 = new byte[7];
                    this.c.a(bArr4, 7);
                    this.f.add(new de.innosystec.unrar.rarfile.a(bVar, bArr4));
                    break;
                case 9:
                    byte[] bArr5 = new byte[6];
                    this.c.a(bArr5, 6);
                    de.innosystec.unrar.rarfile.d dVar = new de.innosystec.unrar.rarfile.d(bVar, bArr5);
                    this.f.add(dVar);
                    this.c.a(dVar.e() + dVar.h());
                    break;
                case 10:
                    int i3 = bVar.a() ? 4 : 0;
                    if (bVar.b()) {
                        i3 += 2;
                    }
                    if (i3 > 0) {
                        byte[] bArr6 = new byte[i3];
                        this.c.a(bArr6, i3);
                        fVar = new f(bVar, bArr6);
                    } else {
                        fVar = new f(bVar, null);
                    }
                    this.f.add(fVar);
                    this.i = fVar;
                    return;
                default:
                    byte[] bArr7 = new byte[4];
                    this.c.a(bArr7, 4);
                    de.innosystec.unrar.rarfile.c cVar = new de.innosystec.unrar.rarfile.c(bVar, bArr7);
                    switch (b.f3400b[cVar.i().ordinal()]) {
                        case 1:
                        case 2:
                            int h = (cVar.h() - 7) - 4;
                            byte[] bArr8 = new byte[h];
                            this.c.a(bArr8, h);
                            if (this.r && this.s.size() > 0) {
                                this.r = false;
                            }
                            g gVar = new g(cVar, bArr8, this);
                            this.s.put(gVar.n(), gVar);
                            this.f.add(gVar);
                            this.c.a(gVar.e() + gVar.h() + gVar.s());
                            break;
                        case 3:
                            int h2 = (cVar.h() - 7) - 4;
                            byte[] bArr9 = new byte[h2];
                            this.c.a(bArr9, h2);
                            this.c.a(new n(cVar, bArr9).e() + r0.h());
                            break;
                        case 4:
                            byte[] bArr10 = new byte[3];
                            this.c.a(bArr10, 3);
                            p pVar = new p(cVar, bArr10);
                            pVar.j();
                            switch (b.f3399a[pVar.n().ordinal()]) {
                                case 1:
                                    byte[] bArr11 = new byte[8];
                                    this.c.a(bArr11, 8);
                                    j jVar = new j(pVar, bArr11);
                                    jVar.j();
                                    this.f.add(jVar);
                                    break;
                                case 3:
                                    byte[] bArr12 = new byte[10];
                                    this.c.a(bArr12, 10);
                                    de.innosystec.unrar.rarfile.e eVar = new de.innosystec.unrar.rarfile.e(pVar, bArr12);
                                    eVar.j();
                                    this.f.add(eVar);
                                    break;
                                case 6:
                                    int h3 = ((pVar.h() - 7) - 4) - 3;
                                    byte[] bArr13 = new byte[h3];
                                    this.c.a(bArr13, h3);
                                    q qVar = new q(pVar, bArr13);
                                    qVar.j();
                                    this.f.add(qVar);
                                    break;
                            }
                        default:
                            f3396a.warning("Unknown Header");
                            throw new RarException(RarException.RarExceptionType.notRarArchive);
                    }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0020, code lost:
    
        r15.c.a(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0025, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m() {
        long length = this.f3397b.length();
        byte[] bArr = new byte[0];
        long a2 = this.c.a();
        while (true) {
            if (this.u == null || !this.u.a()) {
                byte[] bArr2 = new byte[7];
                long a3 = this.c.a();
                if (a3 < length && this.c.a(bArr2, 7) != 0) {
                    de.innosystec.unrar.rarfile.b bVar = new de.innosystec.unrar.rarfile.b(bArr2);
                    bVar.a(a3);
                    UnrarHeadertype i = bVar.i();
                    if (i == null) {
                        throw new RarException(RarException.RarExceptionType.wrongHeaderType);
                    }
                    switch (b.f3400b[i.ordinal()]) {
                        case 5:
                            this.g = new l(bVar);
                            if (!this.g.l()) {
                                throw new RarException(RarException.RarExceptionType.badRarArchive);
                            }
                            break;
                        case 6:
                            int i2 = bVar.c() ? 7 : 6;
                            byte[] bArr3 = new byte[i2];
                            this.c.a(bArr3, i2);
                            new k(bVar, bArr3);
                            break;
                        case 7:
                            byte[] bArr4 = new byte[8];
                            this.c.a(bArr4, 8);
                            new o(bVar, bArr4);
                            break;
                        case 8:
                            byte[] bArr5 = new byte[7];
                            this.c.a(bArr5, 7);
                            new de.innosystec.unrar.rarfile.a(bVar, bArr5);
                            break;
                        case 9:
                            byte[] bArr6 = new byte[6];
                            this.c.a(bArr6, 6);
                            this.c.a(new de.innosystec.unrar.rarfile.d(bVar, bArr6).e() + r1.h());
                            break;
                        case 10:
                            int i3 = bVar.a() ? 4 : 0;
                            if (bVar.b()) {
                                i3 += 2;
                            }
                            if (i3 > 0) {
                                byte[] bArr7 = new byte[i3];
                                this.c.a(bArr7, i3);
                                new f(bVar, bArr7);
                            } else {
                                new f(bVar, null);
                            }
                            if (this.r) {
                                String a4 = com.estrongs.android.util.g.a(bArr, bArr.length);
                                if (Charset.isSupported(a4)) {
                                    this.q = a4;
                                }
                                this.r = false;
                            }
                            this.c.a(a2);
                            return;
                        default:
                            byte[] bArr8 = new byte[4];
                            this.c.a(bArr8, 4);
                            de.innosystec.unrar.rarfile.c cVar = new de.innosystec.unrar.rarfile.c(bVar, bArr8);
                            switch (b.f3400b[cVar.i().ordinal()]) {
                                case 1:
                                case 2:
                                    int h = (cVar.h() - 7) - 4;
                                    byte[] bArr9 = new byte[h];
                                    this.c.a(bArr9, h);
                                    i iVar = new i(cVar, bArr9, this);
                                    if (iVar.o()) {
                                        bArr = com.estrongs.android.util.g.a(bArr, iVar.q());
                                    }
                                    this.c.a(iVar.e() + iVar.h() + iVar.m());
                                    if (bArr.length >= 1024 && this.r) {
                                        String a5 = com.estrongs.android.util.g.a(bArr, bArr.length);
                                        if (Charset.isSupported(a5)) {
                                            this.q = a5;
                                        }
                                        this.r = false;
                                        this.c.a(a2);
                                        return;
                                    }
                                    break;
                                case 3:
                                    int h2 = (cVar.h() - 7) - 4;
                                    byte[] bArr10 = new byte[h2];
                                    this.c.a(bArr10, h2);
                                    this.c.a(new n(cVar, bArr10).e() + r1.h());
                                    break;
                                case 4:
                                    byte[] bArr11 = new byte[3];
                                    this.c.a(bArr11, 3);
                                    p pVar = new p(cVar, bArr11);
                                    pVar.j();
                                    switch (b.f3399a[pVar.n().ordinal()]) {
                                        case 1:
                                            byte[] bArr12 = new byte[8];
                                            this.c.a(bArr12, 8);
                                            new j(pVar, bArr12).j();
                                            break;
                                        case 3:
                                            byte[] bArr13 = new byte[10];
                                            this.c.a(bArr13, 10);
                                            new de.innosystec.unrar.rarfile.e(pVar, bArr13).j();
                                            break;
                                        case 6:
                                            int h3 = ((pVar.h() - 7) - 4) - 3;
                                            byte[] bArr14 = new byte[h3];
                                            this.c.a(bArr14, h3);
                                            new q(pVar, bArr14).j();
                                            break;
                                    }
                                default:
                                    f3396a.warning("Unknown Header");
                                    throw new RarException(RarException.RarExceptionType.notRarArchive);
                            }
                    }
                }
            }
        }
    }

    public File a() {
        return this.f3397b;
    }

    public void a(int i) {
        if (i > 0) {
            this.p += i;
            if (this.d != null) {
                this.d.a(this.p, this.o);
            }
        }
    }

    public void a(com.estrongs.io.a.b bVar) {
        this.t = bVar;
    }

    public void a(d dVar) {
        this.d = dVar;
    }

    public void a(g gVar, OutputStream outputStream) {
        if (!this.f.contains(gVar) && this.s.get(gVar.n()) == null) {
            throw new RarException(RarException.RarExceptionType.headerNotInArchive);
        }
        try {
            b(this.s.get(gVar.n()), outputStream);
        } catch (Exception e) {
            System.out.println("Failed to extract " + gVar.n() + " - " + e.getMessage());
            e.printStackTrace();
            if (!(e instanceof RarException)) {
                throw new RarException(e);
            }
            throw ((RarException) e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(File file) {
        this.f3397b = file;
        this.o = 0L;
        close();
        this.c = new de.innosystec.unrar.b.c(file);
        if (this.r) {
            m();
        }
        try {
            l();
        } catch (RarException e) {
            throw e;
        } catch (Exception e2) {
            e2.printStackTrace();
            f3396a.log(Level.WARNING, "exception in archive constructor maybe file is encrypted or currupt", (Throwable) e2);
        }
        for (de.innosystec.unrar.rarfile.b bVar : this.f) {
            if (bVar.i() == UnrarHeadertype.FileHeader) {
                this.o += ((g) bVar).s();
            }
        }
        if (this.d != null) {
            this.d.a(this.p, this.o);
        }
    }

    public void a(String str) {
        this.q = str;
    }

    public de.innosystec.unrar.b.a b() {
        return this.c;
    }

    public g c() {
        int size = this.f.size();
        while (this.l < size) {
            List<de.innosystec.unrar.rarfile.b> list = this.f;
            int i = this.l;
            this.l = i + 1;
            de.innosystec.unrar.rarfile.b bVar = list.get(i);
            if (bVar.i() == UnrarHeadertype.FileHeader) {
                return (g) bVar;
            }
        }
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.c != null) {
            this.c.close();
            this.c = null;
        }
    }

    public void d() {
        this.l = 0;
    }

    public d e() {
        return this.d;
    }

    public k f() {
        return this.h;
    }

    public boolean g() {
        return this.g.m();
    }

    public void h() {
        this.p = 0L;
    }

    public String i() {
        return this.q;
    }

    public boolean j() {
        return this.r;
    }

    public com.estrongs.io.a.b k() {
        return this.t;
    }
}
