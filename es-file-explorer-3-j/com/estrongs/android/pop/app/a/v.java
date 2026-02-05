package com.estrongs.android.pop.app.a;

import android.content.DialogInterface;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* loaded from: classes.dex */
class v implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ u f431a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(u uVar) {
        this.f431a = uVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        PopAudioPlayer popAudioPlayer;
        popAudioPlayer = this.f431a.f430a.p;
        this.f431a.f430a.b(popAudioPlayer.t().f397b, i != 0 ? i == 1 ? 2 : 4 : 1);
        dialogInterface.dismiss();
    }
}
