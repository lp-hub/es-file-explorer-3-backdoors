package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class hy implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f889a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ boolean f890b;
    final /* synthetic */ ShowDialogActivity c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hy(ShowDialogActivity showDialogActivity, String str, boolean z) {
        this.c = showDialogActivity;
        this.f889a = str;
        this.f890b = z;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String str = this.f889a;
        if (this.f890b && com.estrongs.android.util.ak.aP(this.f889a)) {
            str = com.estrongs.android.util.ak.aY(this.f889a);
        }
        Intent intent = new Intent(this.c, (Class<?>) FileExplorerActivity.class);
        intent.addFlags(603979776);
        if (!str.endsWith("/")) {
            str = str + "/";
        }
        intent.setData(Uri.parse(Uri.encode(str, "/")));
        this.c.startActivity(intent);
        dialogInterface.dismiss();
        this.c.finish();
    }
}
