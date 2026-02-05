package com.estrongs.android.ui.a;

import android.widget.CompoundButton;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class be implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1518a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public be(s sVar) {
        this.f1518a = sVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        com.estrongs.android.pop.q qVar;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        qVar = this.f1518a.e;
        qVar.d(z);
        com.estrongs.android.d.d.a(z);
        int i = 0;
        while (true) {
            int i2 = i;
            fileExplorerActivity = this.f1518a.c;
            if (i2 >= fileExplorerActivity.y.size()) {
                return;
            }
            fileExplorerActivity2 = this.f1518a.c;
            com.estrongs.android.view.ar arVar = fileExplorerActivity2.y.get(i2);
            if (arVar != null && !arVar.m()) {
                if (i2 != com.estrongs.android.ui.d.e.a()) {
                    arVar.j(true);
                } else if (arVar instanceof com.estrongs.android.view.bu) {
                    ((com.estrongs.android.view.bu) arVar).am();
                } else {
                    arVar.b(true);
                }
            }
            i = i2 + 1;
        }
    }
}
