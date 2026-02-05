package com.estrongs.android.pop.utils;

import android.content.DialogInterface;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class w implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1283a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ List f1284b;
    final /* synthetic */ c c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(c cVar, FileExplorerActivity fileExplorerActivity, List list) {
        this.c = cVar;
        this.f1283a = fileExplorerActivity;
        this.f1284b = list;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        this.c.d(this.f1283a, this.f1284b);
    }
}
