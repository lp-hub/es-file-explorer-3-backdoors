package com.estrongs.android.ui.e;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fz implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f2149a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ fy f2150b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fz(fy fyVar, FileExplorerActivity fileExplorerActivity) {
        this.f2150b = fyVar;
        this.f2149a = fileExplorerActivity;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        if (this.f2149a.C()) {
            this.f2149a.a(this.f2149a.v());
            this.f2149a.B();
            com.estrongs.android.view.ar t = this.f2149a.t();
            if (t != null) {
                t.a(false);
            }
        } else {
            this.f2149a.d(C0000R.string.paste_not_allow_msg);
        }
        this.f2149a.s = false;
        this.f2149a.j = "normal_mode";
        this.f2149a.h();
        return true;
    }
}
