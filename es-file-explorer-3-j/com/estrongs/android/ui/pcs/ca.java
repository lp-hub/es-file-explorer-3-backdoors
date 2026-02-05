package com.estrongs.android.ui.pcs;

import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class ca implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2343a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ca(bz bzVar) {
        this.f2343a = bzVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        String str2;
        View view;
        String str3;
        this.f2343a.f2341a.f();
        str = this.f2343a.f2341a.l;
        if (str != null) {
            str2 = this.f2343a.f2341a.l;
            if (str2.length() != 0) {
                view = this.f2343a.f2341a.e;
                EditText editText = (EditText) view.findViewById(C0000R.id.number);
                str3 = this.f2343a.f2341a.l;
                editText.setText(str3);
                editText.setVisibility(8);
            }
        }
        FileExplorerActivity.E().a(this.f2343a.f2341a);
    }
}
