package com.estrongs.android.pop.app;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gt implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopVideoPlayer f854a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gt(PopVideoPlayer popVideoPlayer) {
        this.f854a = popVideoPlayer;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        String a2;
        com.estrongs.android.ui.e.gc gcVar;
        a2 = this.f854a.a(this.f854a.getIntent().getData());
        if (a2 != null) {
            new com.estrongs.android.ui.b.aq(this.f854a).a(C0000R.string.action_delete).b(((Object) this.f854a.getText(C0000R.string.video_player_delete_confirm)) + " " + com.estrongs.android.util.ak.d(a2)).b(C0000R.string.confirm_yes, new gv(this, a2)).c(C0000R.string.confirm_no, new gu(this)).b();
            gcVar = this.f854a.z;
            gcVar.d();
        }
        return true;
    }
}
