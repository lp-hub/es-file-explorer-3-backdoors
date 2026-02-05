package com.estrongs.android.ui.b;

import android.app.Activity;
import android.view.View;
import com.estrongs.android.pop.C0000R;
import java.util.List;

/* loaded from: classes.dex */
public class bh {

    /* renamed from: a, reason: collision with root package name */
    private bk f1660a;

    public bh(Activity activity, List<com.estrongs.fs.g> list, String str) {
        this.f1660a = null;
        this.f1660a = new bk(activity, list, str);
    }

    public void a() {
        View an = this.f1660a.an();
        aq a2 = new aq(an.getContext()).a(C0000R.string.property_title);
        a2.a(an);
        a2.a(C0000R.string.confirm_cancel, new bi(this));
        a2.a(new bj(this));
        ag a3 = a2.a();
        this.f1660a.f = a3;
        a3.show();
        this.f1660a.c();
    }
}
