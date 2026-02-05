package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class in implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1035a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ShowDialogActivity f1036b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public in(ShowDialogActivity showDialogActivity, String str) {
        this.f1036b = showDialogActivity;
        this.f1035a = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Intent intent = new Intent(this.f1036b, (Class<?>) FileExplorerActivity.class);
        intent.addFlags(603979776);
        intent.setData(Uri.parse(Uri.encode(com.estrongs.android.util.ak.aY(this.f1035a), "/")));
        this.f1036b.startActivity(intent);
        dialogInterface.dismiss();
    }
}
