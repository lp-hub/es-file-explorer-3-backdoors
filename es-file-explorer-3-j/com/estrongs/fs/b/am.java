package com.estrongs.fs.b;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class am implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ai f2978a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(ai aiVar) {
        this.f2978a = aiVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        Activity x = ESActivity.x();
        if (x == null) {
            return;
        }
        Intent intent = new Intent(x, (Class<?>) FileExplorerActivity.class);
        intent.addFlags(603979776);
        intent.setData(Uri.parse(Uri.encode(this.f2978a.f2974a.c, "/")));
        x.startActivity(intent);
    }
}
