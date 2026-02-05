package com.b.a.a;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private static long f94a = 0;

    /* renamed from: b, reason: collision with root package name */
    private static final byte[] f95b = {58};

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(j jVar, j jVar2, b.b.a aVar) {
        if (jVar.d()) {
            Enumeration e = jVar.e();
            while (e.hasMoreElements()) {
                c cVar = new c((byte[]) e.nextElement());
                b.b.e a2 = aVar.a(cVar.c(), cVar.a(), cVar.b());
                d dVar = new d();
                dVar.c = cVar.f96a;
                com.b.a.a.a("got nonce", dVar.c);
                if (cVar.a()) {
                    dVar.f99b = a2.a();
                }
                a aVar2 = new a();
                aVar2.a(dVar.c);
                aVar2.a(f95b);
                aVar2.a(a2.b());
                dVar.f98a = aVar2.a();
                com.b.a.a.a("send digest", dVar.f98a);
                jVar2.a(dVar.a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(j jVar, b.b.a aVar, b.b.f fVar, Vector vector) {
        c cVar;
        if (!jVar.f()) {
            return false;
        }
        Enumeration g = jVar.g();
        while (g.hasMoreElements()) {
            byte[] bArr = (byte[]) g.nextElement();
            d dVar = new d();
            dVar.a(bArr);
            com.b.a.a.a("got nonce", dVar.c);
            Enumeration elements = vector.elements();
            while (true) {
                if (!elements.hasMoreElements()) {
                    cVar = null;
                    break;
                }
                cVar = (c) elements.nextElement();
                if (a(cVar.f96a, dVar.c)) {
                    break;
                }
            }
            if (cVar == null) {
                throw new IOException("Authentication response for unknown challenge");
            }
            byte[] a2 = aVar.a(dVar.f99b);
            if (a2 == null) {
                throw new IOException("Authentication request failed, password is not supplied");
            }
            a aVar2 = new a();
            aVar2.a(dVar.c);
            aVar2.a(f95b);
            aVar2.a(a2);
            byte[] a3 = aVar2.a();
            if (a(dVar.f98a, a3)) {
                return true;
            }
            com.b.a.a.a("got digest", dVar.f98a);
            com.b.a.a.a("  expected", a3);
            if (fVar == null) {
                throw new IOException("Authentication failure");
            }
            fVar.a(dVar.f99b);
        }
        return false;
    }

    static boolean a(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < 16; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }
}
