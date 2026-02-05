package com.estrongs.android.view;

import android.app.Activity;
import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ n f2847a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(n nVar) {
        this.f2847a = nVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Activity activity;
        LinkedList linkedList;
        activity = this.f2847a.e;
        FileExplorerActivity fileExplorerActivity = (FileExplorerActivity) activity;
        if (!fileExplorerActivity.C()) {
            this.f2847a.f();
            fileExplorerActivity.d(C0000R.string.paste_not_allow_msg);
        } else {
            linkedList = n.h;
            Iterator it = ((LinkedList) linkedList.clone()).iterator();
            while (it.hasNext()) {
                ((x) it.next()).c();
            }
        }
    }
}
