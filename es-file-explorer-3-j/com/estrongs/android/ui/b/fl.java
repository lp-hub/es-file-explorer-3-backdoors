package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fl implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ew f1822a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fl(ew ewVar) {
        this.f1822a = ewVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.a.a aVar;
        com.estrongs.a.a aVar2;
        com.estrongs.a.a aVar3;
        DialogInterface.OnClickListener onClickListener;
        DialogInterface.OnClickListener onClickListener2;
        aVar = this.f1822a.r;
        if (aVar.canPause()) {
            aVar2 = this.f1822a.r;
            aVar2.resume();
            aVar3 = this.f1822a.r;
            if (aVar3.canHide()) {
                ew ewVar = this.f1822a;
                String string = this.f1822a.mContext.getString(C0000R.string.action_pause);
                onClickListener2 = this.f1822a.o;
                ewVar.setRightButton(string, onClickListener2);
                return;
            }
            ew ewVar2 = this.f1822a;
            String string2 = this.f1822a.mContext.getString(C0000R.string.action_pause);
            onClickListener = this.f1822a.o;
            ewVar2.setConfirmButton(string2, onClickListener);
        }
    }
}
