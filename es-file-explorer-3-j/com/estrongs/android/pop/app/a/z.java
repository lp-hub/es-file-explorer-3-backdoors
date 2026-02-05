package com.estrongs.android.pop.app.a;

import android.content.Context;
import android.content.DialogInterface;
import android.widget.CheckBox;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class z implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f436a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ CheckBox f437b;
    final /* synthetic */ boolean c;
    final /* synthetic */ Context d;
    final /* synthetic */ x e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(x xVar, a aVar, CheckBox checkBox, boolean z, Context context) {
        this.e = xVar;
        this.f436a = aVar;
        this.f437b = checkBox;
        this.c = z;
        this.d = context;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        PopAudioPlayer popAudioPlayer;
        boolean isChecked = this.f437b.isChecked();
        if (this.c != isChecked) {
            com.estrongs.android.pop.q.a(this.d).r(isChecked);
            popAudioPlayer = this.e.f433a.p;
            popAudioPlayer.v();
        }
        dialogInterface.dismiss();
    }
}
