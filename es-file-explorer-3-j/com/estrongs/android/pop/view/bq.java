package com.estrongs.android.pop.view;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.DownloaderActivity;
import com.estrongs.android.pop.netfs.NetFileInfo;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bq implements com.estrongs.android.view.bt {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1353a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bq(FileExplorerActivity fileExplorerActivity) {
        this.f1353a = fileExplorerActivity;
    }

    @Override // com.estrongs.android.view.bt
    public void a(com.estrongs.fs.g gVar) {
        String str;
        FileExplorerActivity fileExplorerActivity;
        com.estrongs.fs.g a2 = gVar instanceof com.estrongs.fs.impl.m.a ? ((com.estrongs.fs.impl.m.a) gVar).a() : gVar;
        if (a2 instanceof com.estrongs.fs.impl.b.c) {
            new com.estrongs.android.ui.b.a(this.f1353a, (com.estrongs.fs.impl.b.c) a2).a();
            return;
        }
        if (a2 instanceof com.estrongs.fs.impl.b.f) {
            this.f1353a.M().a((com.estrongs.fs.impl.b.f) a2);
            return;
        }
        if (com.estrongs.android.util.av.J(a2.getPath())) {
            DownloaderActivity.a((Activity) this.f1353a, a2, false);
            return;
        }
        if ((a2 instanceof com.estrongs.fs.impl.i.a) && (str = (String) a2.getExtra(NetFileInfo.WEB_FILE_URL)) != null) {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            String str2 = (String) a2.getExtra(NetFileInfo.INTENT_FILE_URL);
            if (str2 != null) {
                intent.setData(Uri.parse(str2));
                fileExplorerActivity = FileExplorerActivity.bq;
                if (com.estrongs.android.pop.view.utils.n.a(fileExplorerActivity, intent) == null) {
                    intent.setData(Uri.parse(str));
                }
            }
            this.f1353a.startActivity(intent);
            return;
        }
        String absolutePath = a2.getAbsolutePath();
        if (!a2.getFileType().b() || ((!absolutePath.endsWith(".apk") && !absolutePath.endsWith("APK")) || !com.estrongs.fs.impl.local.h.a((Context) this.f1353a, false) || !com.estrongs.android.pop.q.a(this.f1353a).aa())) {
            this.f1353a.a(gVar.getPath(), gVar.getAbsolutePath());
            return;
        }
        com.estrongs.android.ui.b.aq aqVar = new com.estrongs.android.ui.b.aq(this.f1353a);
        aqVar.a(this.f1353a.getText(C0000R.string.message_confirm)).b(this.f1353a.getText(C0000R.string.apk_install_confirm)).b(C0000R.string.confirm_ok, new bs(this, a2)).c(C0000R.string.confirm_cancel, new br(this));
        aqVar.b();
    }
}
