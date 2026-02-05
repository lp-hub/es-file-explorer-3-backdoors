package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.baidu.sapi2.BDAccountManager;
import com.estrongs.android.pop.C0000R;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class av implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2296a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ as f2297b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public av(as asVar, String str) {
        this.f2297b = asVar;
        this.f2296a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        Handler handler;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        int i;
        Context context6;
        Message message = new Message();
        message.what = 2;
        while (true) {
            Map map = (Map) com.estrongs.fs.impl.i.b.c(this.f2296a, "pcs");
            if (map == null) {
                context = this.f2297b.f2293b;
                message.obj = context.getString(C0000R.string.upgrade_net_error);
                break;
            }
            int parseInt = Integer.parseInt(map.get("errno") + "");
            if (parseInt == 0) {
                String str = map.get("bduss") + "\n" + map.get(BDAccountManager.KEY_PTOKEN) + "\n" + map.get(BDAccountManager.KEY_UID) + "\n" + ((map.get("uname") == null || map.get("uname").equals("")) ? "" + Integer.parseInt("" + map.get(BDAccountManager.KEY_UID)) : (String) map.get("uname"));
                if (str != null) {
                    context2 = this.f2297b.f2293b;
                    message.obj = cl.a(context2, "quikreg:" + com.estrongs.android.util.aw.c(str));
                    message.what = 1;
                    break;
                }
            } else if (parseInt == 2) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                as.c(this.f2297b);
                i = this.f2297b.e;
                if (i <= 0) {
                    context6 = this.f2297b.f2293b;
                    message.obj = context6.getString(C0000R.string.pcs_smsreg_error_timeout);
                    break;
                }
            } else if (parseInt == 1) {
                context5 = this.f2297b.f2293b;
                message.obj = context5.getString(C0000R.string.pcs_smsreg_error_badsms);
            } else if (parseInt == 5) {
                context4 = this.f2297b.f2293b;
                message.obj = context4.getString(C0000R.string.phone_registed);
            } else {
                context3 = this.f2297b.f2293b;
                message.obj = context3.getString(C0000R.string.cannot_regist);
            }
        }
        handler = this.f2297b.h;
        handler.sendMessage(message);
    }
}
