package com.estrongs.android.ui.b;

import android.text.ClipboardManager;
import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dz implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ESActivity f1765a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ dn f1766b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dz(dn dnVar, ESActivity eSActivity) {
        this.f1766b = dnVar;
        this.f1765a = eSActivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        String str2;
        str = this.f1766b.n;
        str2 = this.f1766b.n;
        String C = !com.estrongs.android.util.ak.aO(str2) ? com.estrongs.android.util.ak.C(str) : str;
        if (C != null) {
            ESActivity eSActivity = this.f1765a;
            ESActivity eSActivity2 = this.f1765a;
            ClipboardManager clipboardManager = (ClipboardManager) eSActivity.getSystemService("clipboard");
            if (clipboardManager != null) {
                clipboardManager.setText(C);
                com.estrongs.android.ui.view.z.a(this.f1765a, C0000R.string.copy_path_to_clipboard, 0).show();
            }
        }
    }
}
