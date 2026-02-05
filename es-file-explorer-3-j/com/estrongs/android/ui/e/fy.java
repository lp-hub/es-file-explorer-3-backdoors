package com.estrongs.android.ui.e;

import android.app.Activity;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
public class fy extends gq {
    private com.estrongs.android.ui.view.az g;
    private boolean h;

    public fy(com.estrongs.android.ui.view.az azVar, Activity activity, boolean z) {
        super(activity, z);
        this.h = false;
        this.g = azVar;
    }

    private void k() {
        if (!(this.f1968b instanceof FileExplorerActivity)) {
            throw new IllegalArgumentException("Need FileExplorerActivity as the first argument");
        }
        FileExplorerActivity fileExplorerActivity = (FileExplorerActivity) this.f1968b;
        a(C0000R.string.action_paste, C0000R.drawable.toolbar_edit, new fz(this, fileExplorerActivity));
        a(C0000R.string.action_new, C0000R.drawable.toolbar_new, new ga(this, fileExplorerActivity));
        a(C0000R.string.confirm_cancel, C0000R.drawable.toolbar_cancel, new gb(this, fileExplorerActivity));
        this.h = true;
    }

    public void h() {
        if (this.h) {
            return;
        }
        k();
    }
}
