package com.estrongs.android.ui.e;

import android.content.DialogInterface;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import java.util.List;

/* loaded from: classes.dex */
class cv implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f2051a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ct f2052b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cv(ct ctVar, List list) {
        this.f2052b = ctVar;
        this.f2051a = list;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        dialogInterface.dismiss();
        for (com.estrongs.fs.g gVar : this.f2051a) {
            if (com.estrongs.android.util.ak.aP(gVar.getPath())) {
                fileExplorerActivity = this.f2052b.f2049a.l;
                fileExplorerActivity.a(gVar.getPath(), gVar.getAbsolutePath());
            } else {
                fileExplorerActivity2 = this.f2052b.f2049a.l;
                AppRunner.r(fileExplorerActivity2, gVar.getAbsolutePath());
            }
        }
    }
}
