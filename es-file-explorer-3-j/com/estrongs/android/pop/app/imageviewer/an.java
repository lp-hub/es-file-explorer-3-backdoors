package com.estrongs.android.pop.app.imageviewer;

import android.app.ProgressDialog;
import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class an extends ai implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    private final MonitoredActivity f944a;

    /* renamed from: b, reason: collision with root package name */
    private final ProgressDialog f945b;
    private final Runnable c;
    private final Handler d;
    private final Runnable e = new ao(this);

    public an(MonitoredActivity monitoredActivity, Runnable runnable, ProgressDialog progressDialog, Handler handler) {
        this.f944a = monitoredActivity;
        this.f945b = progressDialog;
        this.c = runnable;
        this.f944a.a((aj) this);
        this.d = handler;
    }

    @Override // com.estrongs.android.pop.app.imageviewer.ai, com.estrongs.android.pop.app.imageviewer.aj
    public void b(MonitoredActivity monitoredActivity) {
        this.e.run();
        this.d.removeCallbacks(this.e);
    }

    @Override // com.estrongs.android.pop.app.imageviewer.ai, com.estrongs.android.pop.app.imageviewer.aj
    public void c(MonitoredActivity monitoredActivity) {
        this.f945b.show();
    }

    @Override // com.estrongs.android.pop.app.imageviewer.ai, com.estrongs.android.pop.app.imageviewer.aj
    public void d(MonitoredActivity monitoredActivity) {
        this.f945b.hide();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.c.run();
        } finally {
            this.d.post(this.e);
        }
    }
}
