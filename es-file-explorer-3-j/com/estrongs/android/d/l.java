package com.estrongs.android.d;

import com.estrongs.android.util.ak;
import com.estrongs.android.view.bu;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f287a;

    private l(i iVar) {
        this.f287a = iVar;
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
            arrayList = this.f287a.f284b;
            synchronized (arrayList) {
                z = this.f287a.d;
                if (z) {
                    return;
                }
                arrayList2 = this.f287a.f284b;
                if (arrayList2.isEmpty()) {
                    try {
                        arrayList4 = this.f287a.f284b;
                        arrayList4.wait();
                    } catch (InterruptedException e) {
                    }
                } else {
                    i iVar = this.f287a;
                    arrayList3 = this.f287a.f284b;
                    iVar.f283a = (k) arrayList3.remove(0);
                }
            }
            String path = this.f287a.f283a.c.getPath();
            if (this.f287a.a(this.f287a.f283a)) {
                this.f287a.f283a.d = this.f287a.f283a.c;
                if (this.f287a.f283a.c.getFileType().a() && (ak.au(this.f287a.f283a.c.getPath()) || ak.aC(this.f287a.f283a.c.getPath()))) {
                    this.f287a.f283a.d = bu.a(this.f287a.f283a.c, false);
                }
                if (this.f287a.f283a.d != null) {
                    boolean[] zArr = {false};
                    this.f287a.f283a.e = d.a(this.f287a.f283a.d, false, zArr);
                    this.f287a.f283a.f285a = zArr[0];
                    if (this.f287a.f283a.e != null) {
                        this.f287a.b(this.f287a.f283a);
                    }
                }
            }
            map = this.f287a.c;
            map.remove(path);
            this.f287a.f283a = null;
        }
    }
}
