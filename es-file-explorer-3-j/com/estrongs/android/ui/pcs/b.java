package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f2305a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f2305a = aVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        boolean z;
        Context context;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        v vVar;
        DialogInterface.OnCancelListener onCancelListener;
        z = this.f2305a.f;
        if (z) {
            switch (message.what) {
                case 1:
                    this.f2305a.g = (String) message.obj;
                    this.f2305a.b();
                    return;
                case 2:
                    Object obj = message.obj;
                    context2 = this.f2305a.f2268b;
                    if (obj.equals(context2.getString(C0000R.string.pcs_normal_error_divecenormalized))) {
                        context5 = this.f2305a.f2268b;
                        d dVar = new d(context5);
                        vVar = this.f2305a.c;
                        dVar.a(vVar);
                        onCancelListener = this.f2305a.d;
                        dVar.a(onCancelListener);
                        this.f2305a.c = null;
                        dVar.a();
                    }
                    if (message.obj != null) {
                        context4 = this.f2305a.f2268b;
                        com.estrongs.android.ui.view.z.a(context4, (String) message.obj, 0).show();
                    } else {
                        context3 = this.f2305a.f2268b;
                        com.estrongs.android.ui.view.z.a(context3, C0000R.string.pcs_directly_failed, 0).show();
                    }
                    this.f2305a.b();
                    return;
                case 3:
                    if (message.obj != null) {
                        context = this.f2305a.f2268b;
                        com.estrongs.android.ui.view.z.a(context, (String) message.obj, 0).show();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }
}
