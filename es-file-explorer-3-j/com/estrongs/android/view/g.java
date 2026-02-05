package com.estrongs.android.view;

import android.os.Handler;
import android.os.Message;
import java.io.File;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f2836a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(e eVar) {
        this.f2836a = eVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        com.estrongs.android.pop.app.compress.an anVar;
        Map map;
        String str;
        com.estrongs.android.pop.app.compress.an anVar2;
        try {
            if (1 != message.what) {
                if (2 == message.what) {
                    com.estrongs.android.ui.view.z.a(this.f2836a.ad, message.obj.toString(), 0).show();
                    this.f2836a.u();
                    return;
                } else {
                    if (message.what == 0) {
                        this.f2836a.g();
                        return;
                    }
                    return;
                }
            }
            anVar = this.f2836a.ap;
            if (anVar != null) {
                anVar2 = this.f2836a.ap;
                anVar2.dismiss();
            }
            map = this.f2836a.ak;
            str = this.f2836a.al;
            map.put(str, new File(message.obj.toString()));
            this.f2836a.b(message.obj.toString());
        } catch (NullPointerException e) {
        }
    }
}
