package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.android.ui.b.ag f2267a;

    /* renamed from: b, reason: collision with root package name */
    private Context f2268b;
    private v c;
    private DialogInterface.OnCancelListener d;
    private aw e;
    private boolean f;
    private String g;
    private ax h;
    private boolean i;
    private com.estrongs.android.pop.q j;
    private Handler k;

    public a(Context context) {
        this(context, false);
    }

    public a(Context context, boolean z) {
        this.f = false;
        this.g = null;
        this.k = new b(this);
        this.f2268b = context;
        this.i = z;
        this.j = com.estrongs.android.pop.q.a(this.f2268b);
        this.e = aw.a();
        this.h = new ax(this.f2268b);
        this.h.a(this.k);
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (str == null) {
            if (this.c != null) {
                this.c.a(false, null, null);
                return;
            }
            return;
        }
        if (this.e != null) {
            this.e.a(2);
            this.e.a(str);
        }
        a("pcs_temp_mode", str);
        if (this.i) {
            return;
        }
        com.estrongs.android.ui.view.z.a(this.f2268b, C0000R.string.pcs_directly_success, 0).show();
    }

    private void b(String str, String str2) {
        this.j.f(str, str2);
    }

    private void c() {
        LinearLayout linearLayout = (LinearLayout) com.estrongs.android.pop.esclasses.e.a(this.f2268b).inflate(C0000R.layout.common_progress_panel, (ViewGroup) null);
        ((TextView) linearLayout.findViewById(C0000R.id.message)).setText(C0000R.string.pcs_directly_loginning);
        this.f2267a = new com.estrongs.android.ui.b.aq(this.f2268b).a(C0000R.string.pcs_login_title).a(linearLayout).a();
        this.f2267a.setOnDismissListener(new c(this));
        this.f2267a.setCanceledOnTouchOutside(false);
    }

    private void d() {
        this.h.a();
    }

    public void a() {
        this.f = true;
        this.f2267a.show();
        d();
        com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
        if (a2 == null || com.estrongs.android.pop.q.a(FexApplication.a()).d()) {
            return;
        }
        a2.a("Press_Direct", "Press_Direct");
    }

    public void a(DialogInterface.OnCancelListener onCancelListener) {
        this.d = onCancelListener;
        this.f2267a.setOnCancelListener(onCancelListener);
    }

    public void a(v vVar) {
        this.c = vVar;
    }

    public void a(String str, String str2) {
        b(str, str2);
        this.j.af();
        if (this.c != null) {
            this.c.a(true, str, str2);
        }
        try {
            com.estrongs.android.view.ar t = FileExplorerActivity.E().t();
            com.estrongs.android.pop.q a2 = com.estrongs.android.pop.q.a(this.f2268b);
            String bp = com.estrongs.android.util.ak.bp(a2.e("Market"));
            if (t != null && t.c() != null && com.estrongs.android.util.ak.d(bp, t.c()) && a2.n() && com.estrongs.android.pop.m.I) {
                t.b(true);
            }
        } catch (Exception e) {
        }
    }

    public void b() {
        this.f2267a.dismiss();
    }
}
