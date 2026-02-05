package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import android.net.wifi.WifiConfiguration;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class gj implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ gi f1856a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gj(gi giVar) {
        this.f1856a = giVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        WifiConfiguration a2;
        com.estrongs.android.f.h hVar;
        a2 = this.f1856a.a();
        if (a2 == null) {
            this.f1856a.dismiss();
            com.estrongs.android.ui.view.z.a(this.f1856a.mContext, C0000R.string.wifi_ap_not_support, 1).show();
        } else {
            this.f1856a.dismiss();
            hVar = this.f1856a.e;
            hVar.a(a2);
        }
    }
}
