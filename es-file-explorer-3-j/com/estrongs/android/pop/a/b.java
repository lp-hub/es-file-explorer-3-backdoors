package com.estrongs.android.pop.a;

import android.app.Activity;
import android.content.DialogInterface;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f331a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Runnable f332b;
    final /* synthetic */ Activity c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(String str, Runnable runnable, Activity activity) {
        this.f331a = str;
        this.f332b = runnable;
        this.c = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Set set;
        dialogInterface.dismiss();
        set = a.d;
        set.add(this.f331a);
        if (this.f332b != null) {
            this.c.runOnUiThread(this.f332b);
        }
    }
}
