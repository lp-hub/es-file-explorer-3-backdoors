package com.estrongs.android.pop.app;

import java.util.List;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gk implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopRemoteImageBrowser f845a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gk(PopRemoteImageBrowser popRemoteImageBrowser) {
        this.f845a = popRemoteImageBrowser;
    }

    /* JADX WARN: Incorrect condition in loop: B:26:0x0069 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        List<com.estrongs.fs.g> list;
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        String str;
        com.estrongs.fs.d dVar;
        String str2;
        try {
            dVar = this.f845a.f368a;
            str2 = this.f845a.f369b;
            list = dVar.a(str2, false);
        } catch (Exception e) {
            list = null;
        }
        if (list == null) {
            return;
        }
        Vector vector = new Vector();
        for (int i = 0; i < list.size(); i++) {
            com.estrongs.fs.g gVar = list.get(i);
            if (gVar != null && !gVar.getFileType().a() && com.estrongs.android.util.av.b(gVar.getAbsolutePath())) {
                vector.add(gVar.getAbsolutePath());
            }
        }
        this.f845a.c = new String[vector.size()];
        strArr = this.f845a.c;
        vector.toArray(strArr);
        for (int i2 = 0; i2 < strArr2.length; i2++) {
            strArr3 = this.f845a.c;
            String str3 = strArr3[i2];
            str = this.f845a.d;
            if (str3.equals(str)) {
                this.f845a.e = i2;
            }
        }
        this.f845a.d();
        gn.a();
    }
}
