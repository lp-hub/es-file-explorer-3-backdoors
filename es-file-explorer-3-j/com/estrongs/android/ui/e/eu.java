package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* loaded from: classes.dex */
class eu implements DialogInterface.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ et f2111a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eu(et etVar) {
        this.f2111a = etVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        PopAudioPlayer popAudioPlayer;
        popAudioPlayer = this.f2111a.f2110a.k;
        popAudioPlayer.r();
    }
}
