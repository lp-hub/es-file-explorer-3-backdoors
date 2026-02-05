package com.estrongs.android.pop.utils;

import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import com.estrongs.android.pop.view.utils.AppRunner;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f1276a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f1277b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(c cVar, List list) {
        this.f1277b = cVar;
        this.f1276a = list;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.f1276a.size()) {
                AppRunner.a(this.f1277b.f1251a, arrayList, arrayList2);
                dialogInterface.dismiss();
                return;
            } else {
                ApplicationInfo c = ((com.estrongs.fs.impl.b.c) this.f1276a.get(i3)).c();
                if (c != null) {
                    arrayList.add(c.packageName);
                    arrayList2.add(((com.estrongs.fs.impl.b.c) this.f1276a.get(i3)).getName());
                }
                i2 = i3 + 1;
            }
        }
    }
}
