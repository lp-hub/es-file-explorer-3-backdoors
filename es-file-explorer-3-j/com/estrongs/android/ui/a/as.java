package com.estrongs.android.ui.a;

import android.widget.CompoundButton;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class as implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1506a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(s sVar) {
        this.f1506a = sVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        if (!z) {
            new Thread(new aw(this)).start();
            fileExplorerActivity = this.f1506a.c;
            com.estrongs.android.pop.q.a(fileExplorerActivity).a(false);
        } else {
            if (com.estrongs.fs.impl.local.h.e()) {
                new Thread(new at(this, compoundButton)).start();
                return;
            }
            fileExplorerActivity2 = this.f1506a.c;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity2, C0000R.string.super_user_error, 1).show();
            compoundButton.setChecked(false);
        }
    }
}
