package com.estrongs.android.ui.c;

import android.app.Activity;
import android.content.DialogInterface;
import android.widget.EditText;
import com.estrongs.android.pop.app.DownloaderActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f1911a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ l f1912b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(l lVar, Activity activity) {
        this.f1912b = lVar;
        this.f1911a = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        EditText editText;
        boolean a2;
        editText = this.f1912b.f1904a;
        String trim = editText.getText().toString().trim();
        a2 = this.f1912b.a(trim);
        if (a2) {
            dialogInterface.dismiss();
            DownloaderActivity.a(this.f1911a, trim);
        }
    }
}
