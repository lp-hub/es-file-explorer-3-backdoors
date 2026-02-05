package com.estrongs.android.pop.utils;

import android.content.Context;
import android.content.Intent;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f1266a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ c f1267b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(c cVar, Context context) {
        this.f1267b = cVar;
        this.f1266a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        List<com.estrongs.fs.g> b2 = this.f1267b.b(this.f1266a);
        if (b2 == null || b2.size() < 1) {
            return;
        }
        try {
            List<com.estrongs.fs.g> a2 = com.estrongs.fs.impl.b.d.a(this.f1266a, b2);
            if (a2 == null || a2.size() < 1) {
                return;
            }
            com.estrongs.android.ui.notification.c cVar = new com.estrongs.android.ui.notification.c(this.f1266a);
            cVar.a(C0000R.drawable.notification_update);
            cVar.b(this.f1266a.getString(C0000R.string.notification_find_update_app, Integer.valueOf(a2.size())));
            cVar.a(this.f1266a.getString(C0000R.string.notification_find_update_app, Integer.valueOf(a2.size())));
            cVar.c(this.f1266a.getText(C0000R.string.see_detail));
            cVar.a(false);
            cVar.b(true);
            Intent intent = new Intent(this.f1266a, (Class<?>) FileExplorerActivity.class);
            intent.putExtra("action", "from_update_notification");
            cVar.a(intent, true);
            cVar.c();
        } catch (Exception e) {
        }
    }
}
