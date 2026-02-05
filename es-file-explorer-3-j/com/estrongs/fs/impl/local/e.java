package com.estrongs.fs.impl.local;

import com.estrongs.android.pop.utils.bt;
import com.estrongs.android.util.aw;
import com.estrongs.fs.impl.media.MediaStoreInsertException;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f3095a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f3096b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(String str, String str2) {
        this.f3095a = str;
        this.f3096b = str2;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String str = this.f3095a;
        if (!str.endsWith("/")) {
            str = str + "/";
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        d.b(new File(this.f3096b), arrayList, arrayList2, arrayList3, arrayList4);
        try {
            if (aw.e()) {
                com.estrongs.fs.impl.media.e.f(str);
                com.estrongs.fs.impl.media.e.a(arrayList4, null);
                return;
            }
            if (arrayList.size() > 0) {
                com.estrongs.fs.impl.j.b.b().c(str);
            }
            if (arrayList2.size() > 0) {
                com.estrongs.fs.impl.h.b.b().c(str);
            }
            if (arrayList3.size() > 0) {
                com.estrongs.fs.impl.p.b.b().c(str);
            }
            if (arrayList.size() > 0) {
                com.estrongs.fs.impl.j.b.b().a(arrayList);
            }
            if (arrayList2.size() > 0) {
                com.estrongs.fs.impl.h.b.b().a(arrayList2);
            }
            if (arrayList3.size() > 0) {
                com.estrongs.fs.impl.p.b.b().a(arrayList3);
            }
        } catch (MediaStoreInsertException e) {
            e.printStackTrace();
            bt.b();
        }
    }
}
