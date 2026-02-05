package com.estrongs.android.pop.app.diskusage;

import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f670a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(e eVar) {
        this.f670a = eVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Activity activity;
        b bVar;
        ListView listView;
        com.estrongs.android.ui.a.g gVar;
        b bVar2;
        long j;
        b bVar3;
        boolean aq;
        long j2;
        Handler handler;
        if (1 == message.what) {
            this.f670a.am();
            return;
        }
        if (2 == message.what) {
            aq = this.f670a.aq();
            if (aq) {
                long currentTimeMillis = System.currentTimeMillis();
                j2 = this.f670a.al;
                long j3 = currentTimeMillis - j2;
                if (j3 < 2000) {
                    handler = this.f670a.aH;
                    handler.sendEmptyMessageDelayed(2, 2000 - j3);
                } else {
                    this.f670a.ap();
                }
            } else {
                this.f670a.al();
            }
            this.f670a.al = 0L;
            return;
        }
        if (3 == message.what) {
            this.f670a.r();
            return;
        }
        if (5 != message.what) {
            if (4 == message.what) {
            }
            return;
        }
        Iterator it = ((List) message.obj).iterator();
        while (it.hasNext()) {
            File a2 = ((q) ((com.estrongs.fs.g) it.next())).a();
            if (a2.exists()) {
                j = this.f670a.aF;
                com.estrongs.fs.c.c cVar = new com.estrongs.fs.c.c(a2, j);
                if (cVar != null) {
                    this.f670a.b(cVar);
                }
                bVar3 = this.f670a.ao;
                bVar3.i.put(a2.getAbsolutePath(), cVar);
            } else {
                bVar2 = this.f670a.ao;
                bVar2.b(a2.getAbsolutePath());
            }
        }
        e eVar = this.f670a;
        activity = this.f670a.ad;
        bVar = this.f670a.ao;
        eVar.aE = new com.estrongs.android.ui.a.g(activity, bVar);
        listView = this.f670a.aG;
        gVar = this.f670a.aE;
        listView.setAdapter((ListAdapter) gVar);
        this.f670a.k(false);
        this.f670a.c(false);
    }
}
