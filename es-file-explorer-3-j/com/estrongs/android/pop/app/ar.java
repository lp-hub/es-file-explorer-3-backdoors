package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import java.io.File;

/* loaded from: classes.dex */
class ar implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileChooserActivity f462a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(FileChooserActivity fileChooserActivity) {
        this.f462a = fileChooserActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String c = this.f462a.f345a.c();
        this.f462a.setResult(-1, com.estrongs.android.util.ak.aO(c) ? new Intent((String) null, Uri.fromFile(new File(c))) : new Intent((String) null, Uri.parse(c)));
        this.f462a.finish();
    }
}
