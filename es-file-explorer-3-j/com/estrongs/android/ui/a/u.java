package com.estrongs.android.ui.a;

import android.os.Environment;
import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1606a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(s sVar) {
        this.f1606a = sVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        if (Environment.getExternalStorageState().equals("mounted")) {
            fileExplorerActivity = this.f1606a.c;
            fileExplorerActivity.a("gallery://local/buckets/");
        } else {
            fileExplorerActivity2 = this.f1606a.c;
            com.estrongs.android.ui.view.z.a(fileExplorerActivity2, C0000R.string.no_sdcard, 1).show();
        }
    }
}
