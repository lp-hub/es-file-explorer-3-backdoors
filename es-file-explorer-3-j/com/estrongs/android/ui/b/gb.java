package com.estrongs.android.ui.b;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.Date;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gb extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ga f1847a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gb(ga gaVar) {
        this.f1847a = gaVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        com.estrongs.android.util.x xVar;
        com.estrongs.android.util.x xVar2;
        TextView textView;
        ProgressBar progressBar;
        TextView textView2;
        int i;
        Context context;
        if (message.what == 6) {
            this.f1847a.l = 2;
            this.f1847a.m = 2;
            this.f1847a.d();
            return;
        }
        if (message.what == 7) {
            this.f1847a.l = 2;
            gh ghVar = (gh) message.obj;
            if (ghVar == null) {
                this.f1847a.l = 2;
                this.f1847a.m = 0;
                this.f1847a.d();
                return;
            }
            int i2 = FileExplorerActivity.d;
            try {
                i = Integer.parseInt(ghVar.f1852a);
            } catch (Exception e) {
                i = 0;
            }
            if (i2 < i) {
                this.f1847a.m = 1;
            } else {
                this.f1847a.m = 0;
            }
            this.f1847a.s = ghVar.f1853b;
            this.f1847a.t = ghVar.c;
            context = this.f1847a.f1845a;
            com.estrongs.android.pop.q.a(context).a(new Date().getTime());
            this.f1847a.d();
            return;
        }
        if (message.what != 8) {
            if (message.what == 9) {
                this.f1847a.l = 4;
                this.f1847a.n = 9;
                this.f1847a.d();
                return;
            } else {
                if (message.what == 10) {
                    this.f1847a.l = 4;
                    this.f1847a.n = 10;
                    this.f1847a.d();
                    return;
                }
                return;
            }
        }
        xVar = this.f1847a.p;
        long longValue = ((Long) xVar.d).longValue();
        xVar2 = this.f1847a.p;
        long longValue2 = ((Long) xVar2.e).longValue();
        textView = this.f1847a.j;
        textView.setText(com.estrongs.fs.c.d.c(longValue2) + "/" + com.estrongs.fs.c.d.c(longValue));
        int i3 = longValue == 0 ? 0 : (int) ((1000 * longValue2) / longValue);
        progressBar = this.f1847a.d;
        progressBar.setProgress(i3);
        textView2 = this.f1847a.i;
        textView2.setText((i3 / 10) + "%");
    }
}
