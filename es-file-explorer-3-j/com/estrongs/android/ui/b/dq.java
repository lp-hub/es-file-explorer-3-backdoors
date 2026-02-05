package com.estrongs.android.ui.b;

import android.app.Activity;
import android.content.DialogInterface;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dq implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String[] f1749a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ dn f1750b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dq(dn dnVar, String[] strArr) {
        this.f1750b = dnVar;
        this.f1749a = strArr;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String g;
        String g2;
        String a2;
        TextView textView;
        Activity activity;
        dialogInterface.dismiss();
        this.f1750b.h.f3106a = -1;
        this.f1750b.h.f3107b = com.estrongs.fs.impl.local.h.h(this.f1749a[i]);
        g = this.f1750b.g();
        if (!com.estrongs.fs.impl.local.h.a(g, this.f1750b.h)) {
            activity = this.f1750b.ad;
            com.estrongs.android.ui.view.z.a(activity, C0000R.string.operation_failed, 0).show();
        }
        dn dnVar = this.f1750b;
        g2 = this.f1750b.g();
        dnVar.h = com.estrongs.fs.impl.local.h.f(g2);
        this.f1750b.f1743a.setText(com.estrongs.fs.impl.local.h.a(this.f1750b.h.c));
        this.f1750b.f1744b.setText(com.estrongs.fs.impl.local.h.b(this.f1750b.h.f3107b));
        dn dnVar2 = this.f1750b;
        a2 = this.f1750b.a(this.f1750b.h);
        dnVar2.g = a2;
        textView = this.f1750b.p;
        textView.setText(this.f1750b.g.substring(0, 3) + " " + this.f1750b.g.substring(3, 6) + " " + this.f1750b.g.substring(6, 9));
    }
}
