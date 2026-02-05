package com.estrongs.android.ui.a;

import android.view.View;
import com.estrongs.android.pop.app.network.EsNetworkActivity;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ak implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1499a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(s sVar) {
        this.f1499a = sVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        fileExplorerActivity = this.f1499a.c;
        fileExplorerActivity.i();
        fileExplorerActivity2 = this.f1499a.c;
        EsNetworkActivity.a((ESActivity) fileExplorerActivity2, (ArrayList<String>) null, false);
    }
}
