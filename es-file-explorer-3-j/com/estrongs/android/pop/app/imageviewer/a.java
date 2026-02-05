package com.estrongs.android.pop.app.imageviewer;

import java.lang.ref.SoftReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private final com.estrongs.android.pop.app.imageviewer.gallery.f f931a;

    /* renamed from: b, reason: collision with root package name */
    private final b[] f932b;

    public a(com.estrongs.android.pop.app.imageviewer.gallery.f fVar, int i) {
        this.f931a = fVar;
        this.f932b = new b[i];
        for (int i2 = 0; i2 < this.f932b.length; i2++) {
            this.f932b[i2] = new b();
        }
    }

    private b c(com.estrongs.android.pop.app.imageviewer.gallery.e eVar) {
        if (eVar == null) {
            return null;
        }
        for (b bVar : this.f932b) {
            if (eVar == bVar.f961a) {
                if (bVar.b()) {
                    return bVar;
                }
                bVar.c();
                return null;
            }
        }
        return null;
    }

    public synchronized al a(com.estrongs.android.pop.app.imageviewer.gallery.e eVar) {
        al alVar;
        b c = c(eVar);
        if (c != null) {
            alVar = c.a();
            if (alVar == null) {
                c.c();
            }
        }
        alVar = null;
        return alVar;
    }

    public synchronized void a() {
        for (b bVar : this.f932b) {
            bVar.c();
        }
    }

    public synchronized void a(com.estrongs.android.pop.app.imageviewer.gallery.e eVar, SoftReference<al> softReference) {
        b bVar;
        b bVar2;
        if (c(eVar) == null) {
            int a2 = this.f931a.a(eVar);
            b bVar3 = null;
            int i = -1;
            b[] bVarArr = this.f932b;
            int length = bVarArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    bVar = bVar3;
                    break;
                }
                bVar = bVarArr[i2];
                if (bVar.f961a == null) {
                    break;
                }
                int abs = Math.abs(a2 - this.f931a.a(bVar.f961a));
                if (abs > i) {
                    bVar2 = bVar;
                } else {
                    abs = i;
                    bVar2 = bVar3;
                }
                i2++;
                bVar3 = bVar2;
                i = abs;
            }
            bVar.c();
            bVar.f961a = eVar;
            bVar.f962b = softReference;
        }
    }

    public synchronized void b(com.estrongs.android.pop.app.imageviewer.gallery.e eVar) {
        b c = c(eVar);
        if (c != null) {
            c.c();
        }
    }
}
