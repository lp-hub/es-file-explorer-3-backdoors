package com.estrongs.android.pop.utils;

import java.io.File;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ab implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f1173a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(List list) {
        this.f1173a = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean l;
        for (int i = 0; i < this.f1173a.size(); i++) {
            String str = (String) this.f1173a.get(i);
            if (com.estrongs.android.util.ak.aZ(str)) {
                String str2 = str.substring(0, str.length() - 1) + "_" + System.currentTimeMillis();
                if (new File(str).renameTo(new File(str2))) {
                    aa.f.a(str2, true, null, false);
                    l = aa.f.l(str2);
                    if (l) {
                        aa.n(str);
                    }
                    if ((l || new File(str2).renameTo(new File(str))) ? false : true) {
                        bt.a(str);
                    }
                    aa.f.a(str2, (List<String>) null, false);
                }
            }
        }
    }
}
