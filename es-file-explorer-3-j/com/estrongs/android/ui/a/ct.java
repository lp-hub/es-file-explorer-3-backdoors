package com.estrongs.android.ui.a;

import android.content.DialogInterface;
import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ct implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cp f1574a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ct(cp cpVar) {
        this.f1574a = cpVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        FileExplorerActivity fileExplorerActivity;
        fileExplorerActivity = this.f1574a.d;
        new com.estrongs.android.ui.b.aq(fileExplorerActivity).a(C0000R.string.new_navi_close).b(C0000R.string.remove_other_windows_confirm).c(C0000R.string.confirm_cancel, (DialogInterface.OnClickListener) null).b(C0000R.string.confirm_ok, new cu(this)).b();
        return false;
    }
}
