package com.estrongs.android.ui.c;

import android.app.Activity;
import android.content.DialogInterface;
import android.widget.EditText;
import com.estrongs.android.pop.app.DownloaderActivity;
import com.estrongs.android.util.aw;
import com.estrongs.fs.b.z;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1907a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ l f1908b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(l lVar, Activity activity) {
        this.f1908b = lVar;
        this.f1907a = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        EditText editText;
        boolean a2;
        editText = this.f1908b.f1904a;
        String trim = editText.getText().toString().trim();
        a2 = this.f1908b.a(trim);
        if (a2) {
            dialogInterface.dismiss();
            String ae = com.estrongs.android.pop.q.a(this.f1907a).ae();
            if (!aw.a((CharSequence) ae)) {
                new z(com.estrongs.fs.d.a(this.f1907a), ae, trim).execute();
            } else {
                DownloaderActivity.a(this.f1907a, new o(this, trim), (DialogInterface.OnCancelListener) null);
            }
        }
    }
}
