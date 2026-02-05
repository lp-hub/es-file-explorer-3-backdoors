package com.estrongs.android.ui.c;

import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.b.ag;
import com.estrongs.android.ui.b.aq;

/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private q f1896a;

    public d(ESActivity eSActivity, com.estrongs.fs.g gVar) {
        this.f1896a = null;
        this.f1896a = new q(eSActivity, gVar);
    }

    public void a() {
        View an = this.f1896a.an();
        aq a2 = new aq(an.getContext()).a(C0000R.string.property_title);
        a2.a(an);
        a2.a(C0000R.string.confirm_cancel, new e(this));
        ag a3 = a2.a();
        this.f1896a.f1913a = a3;
        a3.show();
    }
}
