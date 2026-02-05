package com.estrongs.android.ui.theme;

import android.content.DialogInterface;

/* loaded from: classes.dex */
class d implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ai f2539a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ b f2540b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(b bVar, ai aiVar) {
        this.f2540b = bVar;
        this.f2539a = aiVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        al alVar;
        dialogInterface.dismiss();
        if (this.f2539a.f()) {
            i2 = this.f2540b.f2537a.f2508b;
            alVar = this.f2540b.f2537a.f2507a;
            if (i2 == alVar.e()) {
                this.f2540b.f2537a.setResult(-1);
            }
        }
    }
}
