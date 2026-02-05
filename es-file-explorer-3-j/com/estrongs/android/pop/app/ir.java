package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class ir implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ StreamingMediaPlayer f1040a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ir(StreamingMediaPlayer streamingMediaPlayer) {
        this.f1040a = streamingMediaPlayer;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1040a.b();
        this.f1040a.finish();
    }
}
