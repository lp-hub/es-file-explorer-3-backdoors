package com.estrongs.android.pop.view;

import android.os.Handler;
import android.view.View;
import com.estrongs.android.pop.C0000R;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements com.estrongs.android.widget.av {

    /* renamed from: a, reason: collision with root package name */
    int f1415a = -1;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1416b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(FileExplorerActivity fileExplorerActivity) {
        this.f1416b = fileExplorerActivity;
    }

    @Override // com.estrongs.android.widget.av
    public void a(int i) {
        com.estrongs.android.view.ar arVar;
        if (com.estrongs.android.util.aw.a((List<?>) this.f1416b.y, i) && (arVar = this.f1416b.y.get(i)) != null) {
            this.f1416b.ar = arVar;
        }
        this.f1416b.k.c(false);
    }

    @Override // com.estrongs.android.widget.av
    public void a(int i, float f) {
        float abs = Math.abs(f);
        if (abs < 1.0E-4f) {
            this.f1416b.k.c(true);
        }
        int c = com.estrongs.android.ui.d.e.c();
        if (c != 0 && abs > 1.0E-4f) {
            int i2 = f >= 0.0f ? (i + 1) % c : ((i - 1) + c) % c;
            int i3 = f < 0.0f ? (i + 1) % c : ((i - 1) + c) % c;
            this.f1416b.n.a(i, 1.0f - abs);
            this.f1416b.n.a(i2, abs);
            if (i2 != i3) {
                this.f1416b.n.a(i3, 0.0f);
            }
        }
    }

    @Override // com.estrongs.android.widget.av
    public void b(int i) {
        this.f1416b.k.c(true);
        this.f1416b.n.e(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0116  */
    @Override // com.estrongs.android.widget.av
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void c(int i) {
        Runnable runnable;
        Runnable runnable2;
        com.estrongs.android.view.ar t;
        com.estrongs.android.view.ar arVar;
        com.estrongs.android.view.ar arVar2;
        com.estrongs.android.view.ar arVar3;
        com.estrongs.android.view.ar arVar4;
        com.estrongs.android.view.ar arVar5;
        Runnable runnable3;
        Runnable runnable4;
        int i2;
        int a2 = com.estrongs.android.ui.d.e.a();
        if (this.f1416b.n != null) {
            this.f1416b.n.d(a2);
        }
        this.f1416b.x = i;
        String u = this.f1416b.u();
        if (com.estrongs.android.util.aw.a((CharSequence) u) && i >= 0 && i < com.estrongs.android.ui.d.e.c()) {
            u = com.estrongs.android.ui.d.e.c(i).b();
        }
        com.estrongs.android.ui.pcs.aw a3 = com.estrongs.android.ui.pcs.aw.a();
        boolean aq = com.estrongs.android.util.ak.aq(u);
        if (aq && !a3.c()) {
            runnable3 = this.f1416b.bj;
            if (runnable3 == null) {
                this.f1416b.bj = new k(this);
                Handler handler = this.f1416b.h;
                runnable4 = this.f1416b.bj;
                i2 = this.f1416b.bi;
                handler.postDelayed(runnable4, i2);
                t = this.f1416b.t();
                arVar = this.f1416b.ar;
                if (arVar != null) {
                    arVar2 = this.f1416b.ar;
                    if (arVar2 != t) {
                        arVar3 = this.f1416b.ar;
                        arVar3.b_();
                        arVar4 = this.f1416b.ar;
                        if (arVar4.A()) {
                            arVar5 = this.f1416b.ar;
                            arVar5.a(false);
                        }
                        this.f1416b.ar = t;
                    }
                }
                this.f1416b.O.a(this.f1416b.u(), false);
                View findViewById = this.f1416b.findViewById(C0000R.id.search_bar_top);
                if (t == null) {
                    if (!t.F() && this.f1416b.q) {
                        findViewById.setVisibility(8);
                        this.f1416b.q = false;
                    }
                    t.l();
                } else if (this.f1416b.q) {
                    findViewById.setVisibility(8);
                    this.f1416b.q = false;
                }
                if (com.estrongs.android.util.ak.aN(this.f1416b.u())) {
                    com.estrongs.android.pop.app.b.a.a().c();
                }
                if ("edit_mode".equals(this.f1416b.j)) {
                    return;
                }
                this.f1416b.l();
                return;
            }
        }
        runnable = this.f1416b.bj;
        if (runnable != null && !aq) {
            Handler handler2 = this.f1416b.h;
            runnable2 = this.f1416b.bj;
            handler2.removeCallbacks(runnable2);
            this.f1416b.bj = null;
        }
        t = this.f1416b.t();
        arVar = this.f1416b.ar;
        if (arVar != null) {
        }
        this.f1416b.O.a(this.f1416b.u(), false);
        View findViewById2 = this.f1416b.findViewById(C0000R.id.search_bar_top);
        if (t == null) {
        }
        if (com.estrongs.android.util.ak.aN(this.f1416b.u())) {
        }
        if ("edit_mode".equals(this.f1416b.j)) {
        }
    }

    @Override // com.estrongs.android.widget.av
    public void d(int i) {
    }
}
