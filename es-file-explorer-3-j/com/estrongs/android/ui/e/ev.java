package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopAudioPlayer;
import java.util.List;

/* loaded from: classes.dex */
class ev implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f2112a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ et f2113b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ev(et etVar, List list) {
        this.f2113b = etVar;
        this.f2112a = list;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        PopAudioPlayer popAudioPlayer;
        PopAudioPlayer popAudioPlayer2;
        PopAudioPlayer popAudioPlayer3;
        PopAudioPlayer popAudioPlayer4;
        popAudioPlayer = this.f2113b.f2110a.k;
        List<com.estrongs.android.pop.app.a.af> s = popAudioPlayer.s();
        if (i < this.f2112a.size()) {
            popAudioPlayer4 = this.f2113b.f2110a.k;
            popAudioPlayer4.a(s, (com.estrongs.android.pop.app.a.ag) this.f2112a.get(i));
        } else {
            popAudioPlayer2 = this.f2113b.f2110a.k;
            popAudioPlayer3 = this.f2113b.f2110a.k;
            com.estrongs.android.ui.b.bv bvVar = new com.estrongs.android.ui.b.bv(popAudioPlayer2, popAudioPlayer3.getString(C0000R.string.menu_new_playlist), "");
            bvVar.a(new ew(this, s));
            bvVar.show();
        }
        dialogInterface.dismiss();
    }
}
