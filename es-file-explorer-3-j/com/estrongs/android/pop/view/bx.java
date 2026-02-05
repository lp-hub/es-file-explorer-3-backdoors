package com.estrongs.android.pop.view;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.ui.b.ga;
import com.estrongs.android.ui.b.gh;
import java.util.Date;

/* loaded from: classes.dex */
class bx extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1361a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bx(FileExplorerActivity fileExplorerActivity) {
        this.f1361a = fileExplorerActivity;
    }

    @Override // android.os.Handler
    public synchronized void handleMessage(Message message) {
        switch (message.what) {
            case 1:
                int i = message.arg1;
                com.estrongs.android.ui.b.ag agVar = (com.estrongs.android.ui.b.ag) message.obj;
                if (agVar != null) {
                    agVar.show();
                    this.f1361a.ac.put(i, agVar);
                    break;
                }
                break;
            case 2:
                com.estrongs.android.ui.b.ag agVar2 = (com.estrongs.android.ui.b.ag) this.f1361a.ac.get(message.arg1);
                if (agVar2 != null) {
                    agVar2.dismiss();
                    break;
                }
                break;
            case 3:
                this.f1361a.a((String) null, (String) message.obj);
                break;
            case 7:
                com.estrongs.android.pop.q.a(this.f1361a).a(new Date().getTime());
                gh ghVar = (gh) message.obj;
                if (ghVar != null && ghVar.f1852a != null && ghVar.f1853b != null) {
                    int i2 = FileExplorerActivity.d;
                    int i3 = 0;
                    try {
                        i3 = Integer.parseInt(ghVar.f1852a);
                    } catch (Exception e) {
                    }
                    if (i2 < i3) {
                        new ga(this.f1361a, 2, ghVar, 1).a();
                        break;
                    }
                }
                break;
            case 11:
                ga.a(this.f1361a.ad, "http://update.estrongs.com/up?id=1");
                break;
        }
    }
}
