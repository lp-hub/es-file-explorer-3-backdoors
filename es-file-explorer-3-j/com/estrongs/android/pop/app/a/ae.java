package com.estrongs.android.pop.app.a;

import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ae implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ab f395a;

    private ae(ab abVar) {
        this.f395a = abVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList;
        boolean z;
        ArrayList arrayList2;
        ArrayList arrayList3;
        Map map;
        ArrayList arrayList4;
        while (true) {
            arrayList = this.f395a.f392b;
            synchronized (arrayList) {
                z = this.f395a.d;
                if (z) {
                    return;
                }
                arrayList2 = this.f395a.f392b;
                if (arrayList2.isEmpty()) {
                    try {
                        arrayList4 = this.f395a.f392b;
                        arrayList4.wait();
                    } catch (InterruptedException e) {
                    }
                } else {
                    ab abVar = this.f395a;
                    arrayList3 = this.f395a.f392b;
                    abVar.f391a = (ad) arrayList3.remove(0);
                }
            }
            af afVar = this.f395a.f391a.f394b;
            if (this.f395a.a(this.f395a.f391a)) {
                try {
                    afVar.d();
                    this.f395a.b(this.f395a.f391a);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            map = this.f395a.c;
            map.remove(afVar);
            this.f395a.f391a = null;
        }
    }
}
