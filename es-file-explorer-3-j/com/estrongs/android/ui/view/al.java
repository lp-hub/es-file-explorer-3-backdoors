package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;
import com.estrongs.fs.impl.pcs.PcsFileSystem;

/* loaded from: classes.dex */
class al extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PcsThirdPartOAuth f2606a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public al(PcsThirdPartOAuth pcsThirdPartOAuth) {
        this.f2606a = pcsThirdPartOAuth;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String str;
        String str2;
        Handler handler;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        String str3;
        StringBuilder append = new StringBuilder().append("os_type=");
        str = this.f2606a.d;
        String b2 = PcsFileSystem.b(append.append(str).toString());
        str2 = this.f2606a.e;
        if (str2 != null) {
            str3 = this.f2606a.e;
            if (str3.equals("normal")) {
                b2 = PcsFileSystem.b();
            }
        }
        if (b2 == null) {
            handler3 = this.f2606a.o;
            Message obtainMessage = handler3.obtainMessage(4);
            handler4 = this.f2606a.o;
            handler4.sendMessage(obtainMessage);
            return;
        }
        handler = this.f2606a.o;
        Message obtainMessage2 = handler.obtainMessage(2);
        obtainMessage2.obj = b2;
        handler2 = this.f2606a.o;
        handler2.sendMessage(obtainMessage2);
    }
}
