package com.estrongs.a;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f198a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f198a = aVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        p pVar;
        List list;
        List list2;
        List list3;
        pVar = this.f198a.task_result;
        if (pVar.f229a != 1) {
            this.f198a.executeHelper();
        } else {
            list = this.f198a.postListeners;
            synchronized (list) {
                list2 = this.f198a.postListeners;
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    try {
                        ((com.estrongs.a.a.j) it.next()).a(this.f198a, true);
                    } catch (Exception e) {
                    }
                }
                list3 = this.f198a.postListeners;
                list3.clear();
            }
        }
        this.f198a.async_thread = null;
    }
}
