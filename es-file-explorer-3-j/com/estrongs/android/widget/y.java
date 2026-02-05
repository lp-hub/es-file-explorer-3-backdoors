package com.estrongs.android.widget;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class y {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f2941a;

    /* JADX INFO: Access modifiers changed from: protected */
    public y(g gVar) {
        this.f2941a = gVar;
    }

    public List<com.estrongs.fs.g> a(com.estrongs.android.pop.q qVar, String str) {
        ArrayList arrayList = new ArrayList();
        a(qVar, str, arrayList);
        return arrayList;
    }

    void a(com.estrongs.android.pop.q qVar, String str, List<com.estrongs.fs.g> list) {
        if ("smb".equalsIgnoreCase(str)) {
            qVar.a(list);
            return;
        }
        if ("ftp".equalsIgnoreCase(str)) {
            qVar.d(list);
        } else if ("dropbox".equalsIgnoreCase(str) || "kanbox".equalsIgnoreCase(str)) {
            qVar.b(list);
        }
    }
}
