package com.estrongs.android.ui.e;

import android.content.Context;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.LocalFileSharingActivity;

/* loaded from: classes.dex */
public class bq extends gq {
    public bq(Context context, boolean z) {
        super(context, z);
        h();
    }

    private void h() {
        LocalFileSharingActivity localFileSharingActivity = (LocalFileSharingActivity) this.f1968b;
        a(C0000R.string.action_refresh, C0000R.drawable.toolbar_refresh, new br(this, localFileSharingActivity));
        a(C0000R.string.action_select_all, C0000R.drawable.toolbar_edit_selectall, new bs(this, localFileSharingActivity));
        a(C0000R.string.action_send, C0000R.drawable.toolbar_edit_send, new bt(this, localFileSharingActivity));
    }
}
