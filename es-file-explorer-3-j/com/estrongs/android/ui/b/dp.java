package com.estrongs.android.ui.b;

import android.app.Activity;
import android.content.DialogInterface;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dp implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String[] f1747a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ dn f1748b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dp(dn dnVar, String[] strArr) {
        this.f1748b = dnVar;
        this.f1747a = strArr;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String g;
        String g2;
        String a2;
        TextView textView;
        Activity activity;
        dialogInterface.dismiss();
        this.f1748b.h.f3106a = -1;
        this.f1748b.h.c = com.estrongs.fs.impl.local.h.g(this.f1747a[i]);
        g = this.f1748b.g();
        if (!com.estrongs.fs.impl.local.h.a(g, this.f1748b.h)) {
            activity = this.f1748b.ad;
            com.estrongs.android.ui.view.z.a(activity, C0000R.string.operation_failed, 0).show();
        }
        dn dnVar = this.f1748b;
        g2 = this.f1748b.g();
        dnVar.h = com.estrongs.fs.impl.local.h.f(g2);
        this.f1748b.f1743a.setText(com.estrongs.fs.impl.local.h.a(this.f1748b.h.c));
        this.f1748b.f1744b.setText(com.estrongs.fs.impl.local.h.b(this.f1748b.h.f3107b));
        dn dnVar2 = this.f1748b;
        a2 = this.f1748b.a(this.f1748b.h);
        dnVar2.g = a2;
        textView = this.f1748b.p;
        textView.setText(this.f1748b.g.substring(0, 3) + " " + this.f1748b.g.substring(3, 6) + " " + this.f1748b.g.substring(6, 9));
    }
}
