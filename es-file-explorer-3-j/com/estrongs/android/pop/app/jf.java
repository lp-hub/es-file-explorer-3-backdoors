package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class jf implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ StreamingMediaPlayer f1058a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jf(StreamingMediaPlayer streamingMediaPlayer) {
        this.f1058a = streamingMediaPlayer;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1058a.finish();
    }
}
