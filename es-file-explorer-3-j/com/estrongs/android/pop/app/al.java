package com.estrongs.android.pop.app;

import android.content.Intent;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class al implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f452a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.g f453b;
    final /* synthetic */ Intent c;
    final /* synthetic */ FileChooserActivity d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public al(FileChooserActivity fileChooserActivity, String str, com.estrongs.fs.g gVar, Intent intent) {
        this.d = fileChooserActivity;
        this.f452a = str;
        this.f453b = gVar;
        this.c = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str = com.estrongs.android.pop.a.c;
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        com.estrongs.fs.b.i iVar = new com.estrongs.fs.b.i(com.estrongs.fs.d.a(this.d), com.estrongs.fs.d.a(this.d).j(this.f452a), new com.estrongs.fs.impl.local.b(new File(str)));
        iVar.execute(false);
        this.d.runOnUiThread(new am(this, iVar, str + "/" + this.f453b.getName()));
    }
}
