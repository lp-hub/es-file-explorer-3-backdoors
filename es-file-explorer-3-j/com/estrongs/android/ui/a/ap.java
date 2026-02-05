package com.estrongs.android.ui.a;

import android.widget.CompoundButton;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ap implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1504a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap(s sVar) {
        this.f1504a = sVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        com.estrongs.android.pop.q qVar;
        FileExplorerActivity fileExplorerActivity;
        qVar = this.f1504a.e;
        qVar.u(z);
        if (z) {
            return;
        }
        fileExplorerActivity = this.f1504a.c;
        com.estrongs.android.ui.view.z.a(fileExplorerActivity, C0000R.string.disable_recycle_tip, 0).show();
    }
}
