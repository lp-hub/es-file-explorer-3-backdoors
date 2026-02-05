package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fk implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ew f1821a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fk(ew ewVar) {
        this.f1821a = ewVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        com.estrongs.a.a aVar;
        com.estrongs.a.a aVar2;
        com.estrongs.a.a aVar3;
        DialogInterface.OnClickListener onClickListener;
        DialogInterface.OnClickListener onClickListener2;
        aVar = this.f1821a.r;
        if (aVar.canPause()) {
            aVar2 = this.f1821a.r;
            aVar2.requsestPause();
            aVar3 = this.f1821a.r;
            if (aVar3.canHide()) {
                ew ewVar = this.f1821a;
                String string = this.f1821a.mContext.getString(C0000R.string.overwrite_resume_title);
                onClickListener2 = this.f1821a.p;
                ewVar.setRightButton(string, onClickListener2);
                return;
            }
            ew ewVar2 = this.f1821a;
            String string2 = this.f1821a.mContext.getString(C0000R.string.overwrite_resume_title);
            onClickListener = this.f1821a.p;
            ewVar2.setConfirmButton(string2, onClickListener);
        }
    }
}
