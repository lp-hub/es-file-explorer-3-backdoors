package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import java.io.File;

/* loaded from: classes.dex */
class ap implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileChooserActivity f459a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap(FileChooserActivity fileChooserActivity) {
        this.f459a = fileChooserActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f459a.setResult(-1, com.estrongs.android.util.at.b(this.f459a, new com.estrongs.fs.impl.local.b(new File(this.f459a.f345a.c()))));
        this.f459a.finish();
    }
}
