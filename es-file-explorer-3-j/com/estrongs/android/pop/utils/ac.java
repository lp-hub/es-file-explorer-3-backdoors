package com.estrongs.android.pop.utils;

import java.io.File;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ac implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f1174a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(List list) {
        this.f1174a = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean m;
        for (int i = 0; i < this.f1174a.size(); i++) {
            String str = (String) this.f1174a.get(i);
            m = aa.m(str);
            if (m) {
                String str2 = str.substring(0, str.length() - 1) + "_" + System.currentTimeMillis();
                if (new File(str).renameTo(new File(str2))) {
                    aa.n(str);
                    new File(str2).renameTo(new File(str));
                }
            }
        }
    }
}
