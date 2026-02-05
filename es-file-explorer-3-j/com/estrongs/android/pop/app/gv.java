package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.widget.VideoView;

/* loaded from: classes.dex */
class gv implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f856a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ gt f857b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gv(gt gtVar, String str) {
        this.f857b = gtVar;
        this.f856a = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        VideoView videoView;
        VideoView videoView2;
        videoView = this.f857b.f854a.k;
        if (videoView.isPlaying()) {
            videoView2 = this.f857b.f854a.k;
            videoView2.stopPlayback();
            com.estrongs.android.util.m.b();
        }
        gw gwVar = new gw(this);
        gwVar.start();
        try {
            gwVar.join();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (!com.estrongs.android.util.ak.aP(this.f856a)) {
            this.f857b.f854a.sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.parse("file://" + com.estrongs.android.pop.b.b())));
        }
        this.f857b.f854a.a(com.estrongs.android.util.ak.e(this.f856a));
        this.f857b.f854a.finish();
    }
}
