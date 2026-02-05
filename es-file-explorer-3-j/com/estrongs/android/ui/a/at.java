package com.estrongs.android.ui.a;

import android.os.Handler;
import android.widget.CompoundButton;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.ei;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class at implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CompoundButton f1507a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ as f1508b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public at(as asVar, CompoundButton compoundButton) {
        this.f1508b = asVar;
        this.f1507a = compoundButton;
    }

    @Override // java.lang.Runnable
    public void run() {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        Handler handler;
        fileExplorerActivity = this.f1508b.f1506a.c;
        if (ei.a(fileExplorerActivity)) {
            return;
        }
        fileExplorerActivity2 = this.f1508b.f1506a.c;
        fileExplorerActivity2.runOnUiThread(new au(this));
        handler = this.f1508b.f1506a.n;
        handler.post(new av(this));
    }
}
