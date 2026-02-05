package com.estrongs.android.widget;

import android.app.Activity;
import android.content.DialogInterface;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.bv;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ g f2927a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(g gVar) {
        this.f2927a = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Activity activity;
        Activity activity2;
        Activity activity3;
        Activity activity4;
        activity = this.f2927a.r;
        activity2 = this.f2927a.r;
        String string = activity2.getString(C0000R.string.action_new);
        activity3 = this.f2927a.r;
        bv bvVar = new bv(activity, string, activity3.getString(C0000R.string.category_folder));
        g gVar = this.f2927a;
        activity4 = this.f2927a.r;
        gVar.f2919b = activity4.getString(C0000R.string.category_folder);
        bvVar.a(new m(this));
        bvVar.show();
    }
}
