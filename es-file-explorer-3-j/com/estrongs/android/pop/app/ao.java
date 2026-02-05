package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ao implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Intent f457a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f458b;
    final /* synthetic */ Uri c;
    final /* synthetic */ FileChooserActivity d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(FileChooserActivity fileChooserActivity, Intent intent, String str, Uri uri) {
        this.d = fileChooserActivity;
        this.f457a = intent;
        this.f458b = str;
        this.c = uri;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Uri a2;
        dialogInterface.dismiss();
        if (i == 0) {
            Intent intent = this.f457a;
            a2 = this.d.a(this.f458b);
            intent.setData(a2);
            this.d.setResult(-1, this.f457a);
            this.d.finish();
            return;
        }
        if (i == 1) {
            this.f457a.setData(this.c);
            this.d.setResult(-1, this.f457a);
            this.d.finish();
        }
    }
}
