package com.estrongs.android.pop.app;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class iq implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ StreamingMediaPlayer f1039a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iq(StreamingMediaPlayer streamingMediaPlayer) {
        this.f1039a = streamingMediaPlayer;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1039a.finish();
    }
}
