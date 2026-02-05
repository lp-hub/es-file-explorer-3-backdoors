package com.estrongs.android.pop.app.a;

import android.content.DialogInterface;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;
import com.estrongs.android.ui.b.bv;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f417a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ j f418b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(j jVar, List list) {
        this.f418b = jVar;
        this.f417a = list;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        PopAudioPlayer popAudioPlayer3;
        popAudioPlayer = this.f418b.f416a.p;
        af t = popAudioPlayer.t();
        if (i < this.f417a.size()) {
            this.f418b.f416a.a(t, (ag) this.f417a.get(i));
        } else {
            popAudioPlayer2 = this.f418b.f416a.p;
            popAudioPlayer3 = this.f418b.f416a.p;
            bv bvVar = new bv(popAudioPlayer2, popAudioPlayer3.getString(C0000R.string.menu_new_playlist), "");
            bvVar.a(new l(this, t));
            bvVar.show();
        }
        dialogInterface.dismiss();
    }
}
