package com.estrongs.android.ui.b;

import android.app.Activity;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ae implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1622a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ y f1623b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(y yVar, String str) {
        this.f1623b = yVar;
        this.f1622a = str;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        boolean z;
        Activity activity;
        Activity activity2;
        String str;
        Activity activity3;
        if (i2 == 2) {
            y yVar = this.f1623b;
            activity3 = this.f1623b.c;
            yVar.a(activity3.getString(C0000R.string.pcs_share_uploading), false);
            return;
        }
        if (i2 == 4) {
            y yVar2 = this.f1623b;
            StringBuilder append = new StringBuilder().append(this.f1622a).append("/");
            str = this.f1623b.e;
            yVar2.a(append.append(com.estrongs.android.util.ak.d(str)).toString());
            return;
        }
        if (i2 == 5) {
            z = this.f1623b.k;
            if (z) {
                return;
            }
            y yVar3 = this.f1623b;
            activity = this.f1623b.c;
            yVar3.a(activity.getString(C0000R.string.pcs_share_upload_failed), false);
            activity2 = this.f1623b.c;
            com.estrongs.android.pop.utils.a.a(activity2, C0000R.string.pcs_share_upload_failed);
        }
    }
}
