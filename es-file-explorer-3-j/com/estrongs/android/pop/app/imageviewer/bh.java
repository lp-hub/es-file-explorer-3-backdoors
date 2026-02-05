package com.estrongs.android.pop.app.imageviewer;

import android.content.DialogInterface;
import android.content.SharedPreferences;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bh implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CharSequence[] f970a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f971b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bh(ViewImage21 viewImage21, CharSequence[] charSequenceArr) {
        this.f971b = viewImage21;
        this.f970a = charSequenceArr;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        SharedPreferences sharedPreferences;
        long a2 = com.estrongs.android.util.aw.a((Object) this.f970a[i]);
        if (a2 <= 0 || this.f971b.p == a2) {
            return;
        }
        this.f971b.p = a2;
        sharedPreferences = this.f971b.w;
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putLong("slide_setting_interval", this.f971b.p);
        edit.commit();
    }
}
