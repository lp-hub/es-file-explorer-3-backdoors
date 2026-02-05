package com.estrongs.android.pop.a;

import android.app.Activity;
import android.content.DialogInterface;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.view.z;
import com.estrongs.android.util.aw;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f333a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f334b;
    final /* synthetic */ Runnable c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Activity activity, String str, Runnable runnable) {
        this.f333a = activity;
        this.f334b = str;
        this.c = runnable;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String str;
        dialogInterface.dismiss();
        str = a.f329a;
        if (aw.a((CharSequence) str)) {
            z.a(this.f333a, this.f333a.getString(C0000R.string.download_plugin_install_path_error, new Object[]{this.f334b}), 1).show();
        } else {
            a.b(this.f333a, this.f334b, this.c);
        }
    }
}
