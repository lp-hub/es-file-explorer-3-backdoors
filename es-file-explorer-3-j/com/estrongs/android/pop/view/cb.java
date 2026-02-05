package com.estrongs.android.pop.view;

import android.widget.Toast;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cb implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1366a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cb(FileExplorerActivity fileExplorerActivity) {
        this.f1366a = fileExplorerActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        int h = this.f1366a.h("pcs://");
        if (h > -1) {
            this.f1366a.f(h);
        } else {
            this.f1366a.d("pcs://");
        }
        Toast.makeText(this.f1366a, C0000R.string.baidu_disk_upgrade_pcs_message, 1).show();
    }
}
