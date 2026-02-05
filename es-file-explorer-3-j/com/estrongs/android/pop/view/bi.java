package com.estrongs.android.pop.view;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.estrongs.android.pop.app.ImageCommentActivity;
import com.estrongs.android.pop.spfs.CreateSiteFileObject;
import com.estrongs.android.pop.view.utils.AppRunner;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bi implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1343a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bi(FileExplorerActivity fileExplorerActivity) {
        this.f1343a = fileExplorerActivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        com.estrongs.android.view.ar t = this.f1343a.t();
        com.estrongs.fs.g e = t != null ? t.e(i) : null;
        if (e != null) {
            if (e instanceof CreateSiteFileObject) {
                new com.estrongs.android.ui.b.co(this.f1343a).show();
                return;
            }
            if (e.getFileType().a()) {
                com.estrongs.android.view.ar t2 = this.f1343a.t();
                if (t2 == null || !(t2 instanceof com.estrongs.android.view.bu)) {
                    return;
                }
                ((com.estrongs.android.view.bu) t2).a(e);
                return;
            }
            if (!com.estrongs.android.util.ak.au(e.getPath()) || com.estrongs.android.util.ak.aj(e.getPath())) {
                AppRunner.a((Activity) this.f1343a, e.getPath(), e.getAbsolutePath(), false);
                return;
            }
            Intent intent = new Intent(this.f1343a, (Class<?>) ImageCommentActivity.class);
            this.f1343a.a(intent, e);
            this.f1343a.startActivity(intent);
        }
    }
}
