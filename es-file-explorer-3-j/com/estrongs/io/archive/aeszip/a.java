package com.estrongs.io.archive.aeszip;

import android.util.SparseArray;
import java.io.File;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.nio.charset.Charset;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.Inflater;
import java.util.zip.ZipException;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    protected static int f3191a;
    static final /* synthetic */ boolean f;
    private static final Set j;
    private static final List k;
    private static final SparseArray<String> m;

    /* renamed from: b, reason: collision with root package name */
    protected de.a.a.a.a.h f3192b;
    protected long c;
    protected File d;
    protected String e;
    private String g;
    private boolean h;
    private Map<String, de.a.a.a.a.i> i = new LinkedHashMap();
    private String l = "";
    private b n;

    static {
        f = !a.class.desiredAssertionStatus();
        f3191a = 10240;
        j = new HashSet();
        k = new LinkedList();
        m = new SparseArray<>(25);
    }

    public a(File file, String str, boolean z, b bVar) {
        this.g = "GBK";
        this.h = false;
        this.d = file;
        this.f3192b = new de.a.a.a.a.h(file);
        this.g = str;
        this.h = z;
        this.n = bVar;
        a();
        if (this.h) {
            h();
        }
        i();
    }

    public static final int a(long j2) {
        if (j2 > 65536) {
            j2 = 65536;
        } else if (j2 < 8192) {
            j2 = 8192;
        }
        return (int) j2;
    }

    public static void a(de.a.a.a.a.i iVar) {
        short i = iVar.g().i();
        if (i != 99 && i != 0 && i != 8) {
            throw new ZipException("The compress method is not supported - " + iVar.getName());
        }
        de.a.a.a.a.g g = iVar.g();
        if (g.d()) {
            if (!g.m()) {
                throw new ZipException("NOT_SUPPORTED_ENC_ALG - " + iVar.getName());
            }
            byte j2 = g.j();
            if (j2 != 3) {
                throw new ZipException("NOT_SUPPORTED_ENC_ALG(" + ((int) j2) + ") - " + iVar.getName());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long b(InputStream inputStream, long j2, byte[] bArr) {
        long j3 = 0;
        while (true) {
            long j4 = j2 - j3;
            if (j4 <= 0) {
                break;
            }
            long read = inputStream.read(bArr, 0, j4 < ((long) bArr.length) ? (int) j4 : bArr.length);
            if (read < 0) {
                break;
            }
            j3 += read;
        }
        return j3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, long j2, long j3) {
        throw new ZipException("CRC32 Error - " + str + ",expectedCrc: " + j2 + ",actualCrc:" + j3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Inflater inflater) {
        inflater.reset();
        synchronized (k) {
            k.add(new SoftReference(inflater));
            j.remove(inflater);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f() {
        if (this.f3192b == null) {
            throw new ZipException("ZIP file has been closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Inflater g() {
        Inflater inflater = null;
        synchronized (k) {
            Iterator it = k.iterator();
            while (it.hasNext()) {
                inflater = (Inflater) ((SoftReference) it.next()).get();
                it.remove();
                if (inflater != null) {
                    break;
                }
            }
            if (inflater == null) {
                inflater = new Inflater(true);
            }
            j.add(inflater);
        }
        return inflater;
    }

    private void h() {
        short d = d();
        byte[] bArr = new byte[0];
        long a2 = this.f3192b.a(this.c) & 4294967295L;
        for (int i = 0; i < d; i++) {
            if (this.n != null && this.n.a()) {
                return;
            }
            if (this.f3192b.a(a2) != 33639248) {
                throw new ZipException("expected CENSIC not found at entry no " + (i + 1) + " in central directory at end of zip file at " + a2);
            }
            short b2 = this.f3192b.b(28 + a2);
            short b3 = this.f3192b.b(30 + a2);
            short b4 = this.f3192b.b(32 + a2);
            if (this.f3192b.a(this.f3192b.a(42 + a2) & 4294967295L) != 67324752) {
                throw new ZipException("expected LOCSIC not found at alleged position of data for file no " + (i + 1));
            }
            bArr = com.estrongs.android.util.g.a(bArr, this.f3192b.a(46 + a2, b2));
            if (bArr.length >= 1024) {
                break;
            }
            a2 = a2 + 46 + b2 + b3 + b4;
        }
        if (this.h) {
            String a3 = com.estrongs.android.util.g.a(bArr, bArr.length);
            if (Charset.isSupported(a3)) {
                this.g = a3;
            }
            this.h = false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [int] */
    private void i() {
        de.a.a.a.a.i iVar;
        short d = d();
        long a2 = this.f3192b.a(this.c) & 4294967295L;
        for (short s = 0; s < d; s++) {
            if (this.n != null && this.n.a()) {
                this.i.clear();
                return;
            }
            if (this.f3192b.a(a2) != 33639248) {
                throw new ZipException("expected CENSIC not found at entry no " + (s + 1) + " in central directory at end of zip file at " + a2);
            }
            short b2 = this.f3192b.b(28 + a2);
            short b3 = this.f3192b.b(30 + a2);
            short b4 = this.f3192b.b(32 + a2);
            if (this.f3192b.a(this.f3192b.a(42 + a2) & 4294967295L) != 67324752) {
                throw new ZipException("expected LOCSIC not found at alleged position of data for file no " + (s + 1));
            }
            byte[] a3 = this.f3192b.a(46 + a2, b2);
            de.a.a.a.a.g gVar = new de.a.a.a.a.g(this.f3192b, a2);
            String str = new String(a3, this.g);
            if (str.endsWith("/")) {
                iVar = new de.a.a.a.a.i(str, null);
            } else {
                iVar = new de.a.a.a.a.i(str, gVar);
                iVar.setCompressedSize(gVar.b());
                iVar.setSize(gVar.c());
                a(iVar);
            }
            iVar.setTime(de.a.a.a.a.i.c(this.f3192b.a(12 + a2)));
            if (gVar.d()) {
                iVar.setMethod(gVar.i());
                iVar.a(gVar.f() + gVar.k() + gVar.l());
                iVar.a();
            } else {
                iVar.setMethod(gVar.i());
                iVar.a((int) gVar.i());
                iVar.a(gVar.h());
            }
            this.i.put(iVar.getName(), iVar);
            a2 = a2 + 46 + b2 + b3 + b4;
        }
    }

    protected InputStream a(de.a.a.a.a.i iVar, de.a.a.a.a.b bVar) {
        return new d(this, iVar.e(), iVar.getCompressedSize() - 28, bVar);
    }

    protected InputStream a(de.a.a.a.a.i iVar, boolean z, boolean z2) {
        e eVar = new e(this, iVar.e(), iVar.getCompressedSize());
        int a2 = a(iVar.getSize());
        switch (iVar.getMethod()) {
            case 0:
                return z ? new c(eVar, iVar, a2) : eVar;
            case 8:
                if (!z2) {
                    return z ? new g(eVar, iVar, a2) : eVar;
                }
                eVar.a();
                f fVar = new f(eVar, a2);
                return z ? new c(fVar, iVar, a2) : fVar;
            default:
                if (f) {
                    return eVar;
                }
                throw new AssertionError("this should already have been checked by mountCentralDirectory()");
        }
    }

    public InputStream a(String str, com.estrongs.io.a.b bVar) {
        de.a.a.a.a.c cVar;
        de.a.a.a.a.i iVar = this.i.get(str);
        b(iVar);
        if (iVar.c()) {
            long e = iVar.e() - iVar.g().l();
            byte[] a2 = this.f3192b.a(e, 16);
            byte[] a3 = this.f3192b.a(e + 16, 2);
            this.l = bVar.a();
            if (bVar.b() || this.l == null) {
                return null;
            }
            try {
                cVar = new de.a.a.a.a.c(this.l.getBytes("UTF-8"), a2, a3);
                cVar.a();
            } catch (ZipException e2) {
                if (e2.getMessage().contains("WRONG PASSWORD")) {
                    this.l = null;
                }
                throw e2;
            }
        } else {
            cVar = null;
        }
        return iVar.c() ? iVar.getMethod() == 0 ? a(iVar, cVar) : new f(a(iVar, cVar), new byte[a(iVar.getSize())].length) : a(iVar, false, true);
    }

    protected void a() {
        this.c = this.d.length() - 6;
        if ((this.f3192b.a(this.c - 16) & 4294967295L) != 101010256) {
            long a2 = this.f3192b.a(de.a.a.a.a.f.a(101010256));
            if (a2 == -1) {
                throw new ZipException("expected ENDSIC not found (marks the beginning of the central directory at end of the zip file)");
            }
            this.c = a2 + 16;
            this.e = new String(this.f3192b.a(this.c + 6, this.f3192b.b(this.c + 4)));
        }
    }

    public void b() {
        this.i.clear();
        this.f3192b.a();
    }

    protected void b(de.a.a.a.a.i iVar) {
        if (iVar == null) {
            throw new ZipException("zipEntry must NOT be NULL");
        }
        if (iVar.isDirectory()) {
            throw new ZipException("directory entries cannot be decrypted");
        }
    }

    public Iterator<de.a.a.a.a.i> c() {
        return this.i.values().iterator();
    }

    public short d() {
        return this.f3192b.b(this.c - 6);
    }
}
