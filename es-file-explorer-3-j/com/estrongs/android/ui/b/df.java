package com.estrongs.android.ui.b;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* loaded from: classes.dex */
public class df {

    /* renamed from: a, reason: collision with root package name */
    aq f1731a;

    /* renamed from: b, reason: collision with root package name */
    private ESActivity f1732b;
    private dn c;
    private String d;

    public df(ESActivity eSActivity, com.estrongs.fs.g gVar) {
        this.c = null;
        this.d = null;
        this.c = new dn(eSActivity, gVar);
        this.f1732b = eSActivity;
        this.f1731a = new aq(this.f1732b).a(C0000R.string.property_title);
    }

    public df(ESActivity eSActivity, String str) {
        this.c = null;
        this.d = null;
        this.f1732b = eSActivity;
        this.f1731a = new aq(this.f1732b).a(C0000R.string.property_title);
        if (!com.estrongs.android.util.ak.aO(str) && com.estrongs.fs.a.b.a().g(str) == null) {
            this.d = str;
            return;
        }
        com.estrongs.fs.g j = com.estrongs.fs.d.a().j(str);
        if (j == null) {
            com.estrongs.android.ui.view.z.a(eSActivity, C0000R.string.access_failed, 1).show();
        } else {
            this.c = new dn(eSActivity, j);
        }
    }

    public void a() {
        if (this.c != null) {
            b();
            return;
        }
        if (com.estrongs.android.util.aw.a((CharSequence) this.d)) {
            return;
        }
        View inflate = LayoutInflater.from(this.f1732b).inflate(C0000R.layout.progressbar, (ViewGroup) null);
        ((TextView) inflate.findViewById(C0000R.id.message)).setText(C0000R.string.progress_loading);
        this.f1731a.a(inflate);
        ag a2 = this.f1731a.a();
        dg dgVar = new dg(this, "Getting FileObject", a2, inflate);
        dgVar.start();
        this.f1731a.a(C0000R.string.confirm_cancel, new dj(this, dgVar));
        a2.show();
    }

    public void b() {
        this.c.c();
        this.f1731a.a(this.c.an());
        this.f1731a.a(C0000R.string.confirm_cancel, new dk(this));
        this.f1731a.a(new dl(this));
        ag a2 = this.f1731a.a();
        this.c.j = a2;
        a2.show();
    }
}
