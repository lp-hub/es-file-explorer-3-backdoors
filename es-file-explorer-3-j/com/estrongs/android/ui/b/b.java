package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1651a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f1651a = aVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        dialogInterface.dismiss();
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f1651a.f1612a);
        fileExplorerActivity = this.f1651a.c;
        com.estrongs.android.pop.utils.c M = fileExplorerActivity.M();
        fileExplorerActivity2 = this.f1651a.c;
        M.c(fileExplorerActivity2, arrayList);
    }
}
