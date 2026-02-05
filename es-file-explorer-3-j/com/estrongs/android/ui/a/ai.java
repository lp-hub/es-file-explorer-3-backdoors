package com.estrongs.android.ui.a;

import android.os.Environment;
import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ai implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1497a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ai(s sVar) {
        this.f1497a = sVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FileExplorerActivity fileExplorerActivity;
        com.estrongs.android.util.a aVar;
        com.estrongs.android.util.a aVar2;
        FileExplorerActivity fileExplorerActivity2;
        if (!Environment.getExternalStorageState().equals("mounted")) {
            fileExplorerActivity2 = this.f1497a.c;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity2, C0000R.string.no_sdcard, 1).show();
            return;
        }
        fileExplorerActivity = this.f1497a.c;
        fileExplorerActivity.c("du://" + com.estrongs.android.pop.b.b());
        aVar = this.f1497a.k;
        if (aVar != null) {
            aVar2 = this.f1497a.k;
            aVar2.a("SDCardAnalyst_Show", "SDCardAnalyst_Show");
        }
    }
}
