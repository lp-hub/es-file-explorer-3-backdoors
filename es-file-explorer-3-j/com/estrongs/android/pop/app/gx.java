package com.estrongs.android.pop.app;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gx implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopVideoPlayer f859a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gx(PopVideoPlayer popVideoPlayer) {
        this.f859a = popVideoPlayer;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        com.estrongs.android.ui.e.gc gcVar;
        Uri data = this.f859a.getIntent().getData();
        if (data != null) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.setType("video/*");
            intent.putExtra("android.intent.extra.STREAM", data);
            try {
                this.f859a.startActivity(Intent.createChooser(intent, this.f859a.getText(C0000R.string.action_share_via)));
            } catch (ActivityNotFoundException e) {
            }
            gcVar = this.f859a.z;
            gcVar.d();
        }
        return true;
    }
}
