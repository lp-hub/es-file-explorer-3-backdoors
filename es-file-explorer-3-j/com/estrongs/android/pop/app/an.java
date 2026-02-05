package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.net.Uri;
import java.io.File;

/* loaded from: classes.dex */
class an implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ am f456a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public an(am amVar) {
        this.f456a = amVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == 0) {
            this.f456a.c.c.setData(FileContentProvider.a(this.f456a.f455b));
            this.f456a.c.d.setResult(-1, this.f456a.c.c);
            this.f456a.c.d.finish();
        } else if (i == 1) {
            this.f456a.c.c.setData(Uri.fromFile(new File(this.f456a.f455b)));
            this.f456a.c.d.setResult(-1, this.f456a.c.c);
            this.f456a.c.d.finish();
        }
    }
}
