package com.estrongs.fs.b;

import android.app.Activity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.fs.FileSystemException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class b extends i {

    /* renamed from: a, reason: collision with root package name */
    Activity f2995a;

    /* renamed from: b, reason: collision with root package name */
    List<com.estrongs.fs.impl.b.c> f2996b;

    public b(Activity activity, com.estrongs.fs.d dVar, List<com.estrongs.fs.impl.b.c> list, String str) {
        super(dVar, a(list), com.estrongs.fs.d.m(str));
        this.f2995a = activity;
        this.f2996b = list;
        this.processData.p = false;
        c(false);
    }

    public static List<com.estrongs.fs.g> a(List<com.estrongs.fs.impl.b.c> list) {
        ArrayList arrayList = new ArrayList();
        for (com.estrongs.fs.impl.b.c cVar : list) {
            c cVar2 = new c(cVar.f().c(), cVar);
            cVar2.putExtra("item_paste_name", cVar.g());
            arrayList.add(cVar2);
        }
        return arrayList;
    }

    @Override // com.estrongs.fs.b.i, com.estrongs.a.a
    public void handleMessage(int i, Object... objArr) {
        if (i == 1 || i == 2) {
            try {
                this.processData.q = this.f.get((int) this.processData.d).f3008a.getName();
            } catch (Exception e) {
            }
        }
        super.handleMessage(i, objArr);
    }

    @Override // com.estrongs.fs.b.i, com.estrongs.a.a
    public boolean task() {
        ArrayList arrayList = (ArrayList) this.f.clone();
        boolean task = super.task();
        if (task) {
            try {
                if (this.f2996b.size() == 1 && this.f2996b.get(0).f().g()) {
                    String str = this.f2996b.get(0).c().packageName;
                    String str2 = ((k) arrayList.get(0)).f3009b;
                    if (com.estrongs.fs.d.a().b(str2)) {
                        if (com.estrongs.android.pop.utils.y.a(str)) {
                            this.f2995a.runOnUiThread(new d(this, str, str2));
                        } else {
                            AppRunner.r(this.f2995a, str2);
                        }
                    }
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        k kVar = (k) it.next();
                        if (com.estrongs.fs.d.a().b(kVar.f3009b)) {
                            arrayList2.add(kVar.f3009b);
                        }
                    }
                    if (arrayList2.size() > 0) {
                        AppRunner.a(this.f2995a, arrayList2);
                    }
                }
            } catch (FileSystemException e) {
                e.printStackTrace();
            }
        }
        return task;
    }
}
