package com.estrongs.android.ui.b;

import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    protected com.estrongs.fs.impl.b.c f1612a;

    /* renamed from: b, reason: collision with root package name */
    private e f1613b;
    private FileExplorerActivity c;

    public a(FileExplorerActivity fileExplorerActivity, com.estrongs.fs.impl.b.c cVar) {
        this.f1613b = null;
        this.f1612a = null;
        this.c = fileExplorerActivity;
        this.f1612a = cVar;
        this.f1613b = new e(this, fileExplorerActivity);
    }

    public void a() {
        View an = this.f1613b.an();
        aq a2 = new aq(an.getContext()).a(C0000R.string.property_title);
        a2.a(an);
        if (this.f1612a.e()) {
            a2.b(C0000R.string.pcs_normal_window_title, new b(this));
        } else {
            a2.b(C0000R.string.action_open, new c(this));
        }
        a2.c(C0000R.string.confirm_cancel, new d(this));
        a2.b();
    }
}
