package com.estrongs.android.pop.view;

import com.estrongs.android.pop.app.network.EsNetworkActivity;
import com.estrongs.android.pop.esclasses.ESActivity;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dc implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1397a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dc(FileExplorerActivity fileExplorerActivity) {
        this.f1397a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1397a.i();
        EsNetworkActivity.a((ESActivity) this.f1397a, (ArrayList<String>) null, false);
    }
}
