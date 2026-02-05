package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class ip implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ StreamingMediaPlayer f1038a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ip(StreamingMediaPlayer streamingMediaPlayer) {
        this.f1038a = streamingMediaPlayer;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1038a.finish();
    }
}
