package com.estrongs.android.ui.a;

import android.widget.CompoundButton;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class az implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1513a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public az(s sVar) {
        this.f1513a = sVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        com.estrongs.android.pop.q qVar;
        FileExplorerActivity fileExplorerActivity;
        qVar = this.f1513a.e;
        qVar.n(z);
        com.estrongs.android.ui.guesture.b.f2234a = z;
        try {
            fileExplorerActivity = this.f1513a.c;
            fileExplorerActivity.I.postInvalidate();
        } catch (Exception e) {
        }
    }
}
