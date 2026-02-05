package com.estrongs.android.ui.a;

import android.widget.CompoundButton;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bc implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1517a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bc(s sVar) {
        this.f1517a = sVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        com.estrongs.android.pop.q qVar;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        qVar = this.f1517a.e;
        qVar.b(z);
        fileExplorerActivity = this.f1517a.c;
        fileExplorerActivity.Q.a(null);
        int i = 0;
        while (true) {
            int i2 = i;
            fileExplorerActivity2 = this.f1517a.c;
            if (i2 >= fileExplorerActivity2.y.size()) {
                return;
            }
            fileExplorerActivity3 = this.f1517a.c;
            com.estrongs.android.view.ar arVar = fileExplorerActivity3.y.get(i2);
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
