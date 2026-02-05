package com.estrongs.fs.b;

import android.content.DialogInterface;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import java.util.ArrayList;

/* loaded from: classes.dex */
class e implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f3000a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar) {
        this.f3000a = dVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.add(this.f3000a.f2998a);
        arrayList2.add(this.f3000a.c.f2996b.get(0).getName());
        AppRunner.a(this.f3000a.c.f2995a, arrayList, arrayList2);
        ((FileExplorerActivity) this.f3000a.c.f2995a).M().a(this.f3000a.f2998a, this.f3000a.f2999b);
    }
}
