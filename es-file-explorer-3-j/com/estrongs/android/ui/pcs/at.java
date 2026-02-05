package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class at extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ as f2294a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public at(as asVar) {
        this.f2294a = asVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Context context;
        Context context2;
        Context context3;
        switch (message.what) {
            case 1:
                this.f2294a.g = (String) message.obj;
                this.f2294a.b();
                return;
            case 2:
                if (message.obj != null) {
                    context3 = this.f2294a.f2293b;
                    com.estrongs.android.ui.view.z.a(context3, (String) message.obj, 0).show();
                } else {
                    context2 = this.f2294a.f2293b;
                    com.estrongs.android.ui.view.z.a(context2, C0000R.string.pcs_directly_failed, 0).show();
                }
                this.f2294a.b();
                return;
            case 3:
                if (message.obj != null) {
                    context = this.f2294a.f2293b;
                    com.estrongs.android.ui.view.z.a(context, (String) message.obj, 0).show();
                    return;
                }
                return;
            default:
                return;
        }
    }
}
