package com.estrongs.android.pop.view;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class by extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1362a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public by(FileExplorerActivity fileExplorerActivity) {
        this.f1362a = fileExplorerActivity;
    }

    private void a(String str) {
        String bo;
        synchronized (this.f1362a.y) {
            for (com.estrongs.android.view.ar arVar : this.f1362a.y) {
                if (arVar != null && (bo = com.estrongs.android.util.ak.bo(arVar.c())) != null && bo.startsWith(str)) {
                    arVar.a((com.estrongs.android.view.br) null);
                    arVar.b(true);
                    arVar.a(this.f1362a.O);
                }
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        com.estrongs.android.ui.f.a aI;
        com.estrongs.android.ui.a.s sVar;
        com.estrongs.android.ui.a.s sVar2;
        com.estrongs.android.ui.a.s sVar3;
        try {
            String action = intent.getAction();
            String path = intent.getData().getPath();
            if (action.equals("android.intent.action.MEDIA_MOUNTED")) {
                a(path);
                com.estrongs.android.view.ar.af();
            } else if (action.equals("android.intent.action.MEDIA_REMOVED") || action.equals("android.intent.action.MEDIA_UNMOUNTED") || action.equals("android.intent.action.MEDIA_BAD_REMOVAL")) {
                com.estrongs.fs.a.b.a().c();
                com.estrongs.android.pop.app.b.a.d = true;
                a(path);
                com.estrongs.android.view.ar.af();
            }
            aI = this.f1362a.aI();
            if (aI == null) {
                sVar = this.f1362a.bp;
                if (sVar != null) {
                    if (action.equals("android.intent.action.MEDIA_MOUNTED")) {
                        sVar3 = this.f1362a.bp;
                        sVar3.a(intent.getData().getPath());
                    } else if (action.equals("android.intent.action.MEDIA_REMOVED") || action.equals("android.intent.action.MEDIA_UNMOUNTED") || action.equals("android.intent.action.MEDIA_BAD_REMOVAL")) {
                        sVar2 = this.f1362a.bp;
                        sVar2.b(intent.getData().getPath());
                    }
                }
            } else if (action.equals("android.intent.action.MEDIA_MOUNTED")) {
                aI.a(intent.getData().getPath());
            } else if (action.equals("android.intent.action.MEDIA_REMOVED") || action.equals("android.intent.action.MEDIA_UNMOUNTED") || action.equals("android.intent.action.MEDIA_BAD_REMOVAL")) {
                aI.b(intent.getData().getPath());
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            com.estrongs.android.util.ak.b();
            com.estrongs.android.util.ak.e();
        }
    }
}
