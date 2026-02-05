package com.estrongs.a;

import android.app.AlertDialog;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a.c f217a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f218b;
    final /* synthetic */ d c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar, com.estrongs.a.a.c cVar, a aVar) {
        this.c = dVar;
        this.f217a = cVar;
        this.f218b = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.c.f216a);
        if (this.f217a.h == 1) {
            builder.setMessage("File " + ((com.estrongs.a.a.e) this.f217a).f191a + " exist, how to do?");
            builder.setPositiveButton("Overwrite(notApply)", new f(this));
            builder.setNegativeButton("Skip(apply)", new g(this));
            builder.setNeutralButton("EndTask", new h(this));
        } else if (this.f217a.h == 3) {
            builder.setMessage("File " + ((com.estrongs.a.a.d) this.f217a).f191a + " copy failed, how to do?");
            builder.setPositiveButton("Skip", new i(this));
            builder.setNegativeButton("End task", new j(this));
        }
        builder.create().show();
    }
}
