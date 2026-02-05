package com.estrongs.android.ui.e;

import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class eb implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2090a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ea f2091b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eb(ea eaVar, String str) {
        this.f2091b = eaVar;
        this.f2090a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        FileExplorerActivity fileExplorerActivity;
        try {
            com.estrongs.fs.impl.i.b.d(this.f2090a);
            fileExplorerActivity = this.f2091b.f2089a.l;
            fileExplorerActivity.a(new ec(this));
        } catch (NetFsException e) {
            e.printStackTrace();
        }
    }
}
