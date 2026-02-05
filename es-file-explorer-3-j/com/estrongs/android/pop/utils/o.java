package com.estrongs.android.pop.utils;

import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import com.estrongs.android.pop.view.utils.AppRunner;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f1269a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f1270b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(c cVar, List list) {
        this.f1270b = cVar;
        this.f1269a = list;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        boolean a2;
        dialogInterface.dismiss();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.f1269a.size()) {
                break;
            }
            ApplicationInfo c = ((com.estrongs.fs.impl.b.c) this.f1269a.get(i3)).c();
            if (c != null) {
                String absolutePath = ((com.estrongs.fs.impl.b.c) this.f1269a.get(i3)).getAbsolutePath();
                a2 = this.f1270b.a(absolutePath);
                if (a2) {
                    p pVar = new p(this, arrayList3, absolutePath, (com.estrongs.fs.impl.b.c) this.f1269a.get(i3));
                    pVar.start();
                    try {
                        pVar.join();
                    } catch (Exception e) {
                    }
                }
                arrayList.add(c.packageName);
                arrayList2.add(((com.estrongs.fs.impl.b.c) this.f1269a.get(i3)).getName());
            }
            i2 = i3 + 1;
        }
        q qVar = new q(this, arrayList3);
        qVar.start();
        try {
            qVar.join();
        } catch (Exception e2) {
        }
        AppRunner.a(this.f1270b.f1251a, arrayList, arrayList2);
        dialogInterface.dismiss();
    }
}
