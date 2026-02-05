package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
class ao extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2610a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ am f2611b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(am amVar, String str) {
        this.f2611b = amVar;
        this.f2610a = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String str;
        boolean c;
        Handler handler;
        Message obtainMessage;
        Handler handler2;
        Handler handler3;
        com.estrongs.android.util.a a2;
        String str2;
        String str3;
        String str4;
        if (this.f2610a != null) {
            int indexOf = this.f2610a.indexOf("<is_binded>");
            int indexOf2 = this.f2610a.indexOf("</is_binded>");
            if (indexOf != -1 && indexOf2 != -1 && this.f2610a.substring(indexOf + "<is_binded>".length(), indexOf2).trim().equals("0") && (a2 = com.estrongs.android.util.a.a()) != null) {
                str2 = this.f2611b.f2607a.d;
                if (str2.equals("sinaweibo")) {
                    a2.a("Sina_Register", "Sina_Register");
                } else {
                    str3 = this.f2611b.f2607a.d;
                    if (str3.equals("qq")) {
                        a2.a("QQ_Register", "QQ_Register");
                    } else {
                        str4 = this.f2611b.f2607a.d;
                        if (str4.equals("renren")) {
                            a2.a("RenRen_Register", "RenRen_Register");
                        }
                    }
                }
            }
        }
        this.f2611b.f2607a.n = "thirdpart:" + com.estrongs.android.util.aw.c(this.f2610a);
        PcsThirdPartOAuth pcsThirdPartOAuth = this.f2611b.f2607a;
        str = this.f2611b.f2607a.n;
        c = pcsThirdPartOAuth.c(str);
        if (c) {
            handler = this.f2611b.f2607a.o;
            obtainMessage = handler.obtainMessage(6);
        } else {
            handler3 = this.f2611b.f2607a.o;
            obtainMessage = handler3.obtainMessage(4);
        }
        handler2 = this.f2611b.f2607a.o;
        handler2.sendMessage(obtainMessage);
    }
}
