package com.estrongs.android.ui.pcs;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.baidu.sapi2.BDAccountManager;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ay implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ax f2302a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ay(ax axVar) {
        this.f2302a = axVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x018e A[Catch: all -> 0x0070, TryCatch #0 {, blocks: (B:4:0x0006, B:6:0x001e, B:8:0x0035, B:9:0x003e, B:12:0x0040, B:14:0x004e, B:16:0x0065, B:17:0x006e, B:20:0x0073, B:22:0x007f, B:24:0x0096, B:25:0x009f, B:28:0x00a1, B:30:0x00b1, B:32:0x00bb, B:34:0x00c3, B:36:0x012a, B:37:0x0133, B:40:0x0136, B:59:0x0140, B:49:0x0266, B:51:0x0285, B:52:0x028e, B:55:0x016f, B:57:0x018e, B:62:0x0260, B:63:0x0291, B:65:0x02b0, B:66:0x02b9, B:69:0x0197, B:71:0x01a1, B:73:0x01a9, B:75:0x01bc, B:77:0x01c6, B:79:0x01ce, B:81:0x0244, B:82:0x024b, B:84:0x0253, B:85:0x025c, B:88:0x02bc, B:99:0x02c6, B:95:0x0309, B:97:0x02f0, B:102:0x0304, B:103:0x031d, B:105:0x0331), top: B:3:0x0006, inners: #1, #2 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        Object obj;
        Context context;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        Handler handler;
        Handler handler2;
        Context context6;
        long parseLong;
        Context context7;
        Context context8;
        Context context9;
        Context context10;
        Context context11;
        Handler handler3;
        Handler handler4;
        long parseLong2;
        Context context12;
        Handler handler5;
        Handler handler6;
        Context context13;
        Handler handler7;
        Handler handler8;
        Context context14;
        Handler handler9;
        Handler handler10;
        Context context15;
        Handler handler11;
        Handler handler12;
        Context context16;
        Handler handler13;
        Handler handler14;
        Context context17;
        Handler handler15;
        Handler handler16;
        obj = ax.c;
        synchronized (obj) {
            Message message = new Message();
            message.what = 2;
            context = this.f2302a.f2300a;
            if (com.estrongs.android.pop.q.a(context).d()) {
                context17 = this.f2302a.f2300a;
                message.obj = context17.getString(C0000R.string.pcs_normal_error_divecenormalized);
                handler15 = this.f2302a.f2301b;
                if (handler15 != null) {
                    handler16 = this.f2302a.f2301b;
                    handler16.sendMessage(message);
                }
                return;
            }
            context2 = this.f2302a.f2300a;
            if (FileExplorerActivity.a((Activity) context2) != 3) {
                context16 = this.f2302a.f2300a;
                message.obj = context16.getString(C0000R.string.operation_failed);
                handler13 = this.f2302a.f2301b;
                if (handler13 != null) {
                    handler14 = this.f2302a.f2301b;
                    handler14.sendMessage(message);
                }
                return;
            }
            context3 = this.f2302a.f2300a;
            String a2 = FileExplorerActivity.a(context3);
            if (a2 == null) {
                context15 = this.f2302a.f2300a;
                message.obj = context15.getString(C0000R.string.pcs_directly_error_nodeviceid);
                handler11 = this.f2302a.f2301b;
                if (handler11 != null) {
                    handler12 = this.f2302a.f2301b;
                    handler12.sendMessage(message);
                }
                return;
            }
            context4 = this.f2302a.f2300a;
            String a3 = com.estrongs.android.pop.q.a(context4).a();
            if (a3 != null) {
                Map map = (Map) com.estrongs.fs.impl.i.b.a(a2, a3, "pcs");
                if (map == null) {
                    Message message2 = new Message();
                    message2.what = 2;
                    context11 = this.f2302a.f2300a;
                    message2.obj = context11.getString(C0000R.string.network_fail);
                    handler3 = this.f2302a.f2301b;
                    if (handler3 != null) {
                        handler4 = this.f2302a.f2301b;
                        handler4.sendMessage(message2);
                    }
                    return;
                }
                if (map.get("error_msg") == null) {
                    String str = map.get("bduss") + "\n" + a3 + "\n" + map.get(BDAccountManager.KEY_UID) + "\n临时用户";
                    context14 = this.f2302a.f2300a;
                    message.obj = cl.a(context14, "quikreg:" + com.estrongs.android.util.aw.c(str));
                    message.what = 1;
                    handler9 = this.f2302a.f2301b;
                    if (handler9 != null) {
                        handler10 = this.f2302a.f2301b;
                        handler10.sendMessage(message);
                    }
                    return;
                }
                if (map.containsKey("error_code")) {
                    try {
                        parseLong2 = Long.parseLong("" + map.get("error_code"));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    if (parseLong2 == 102 && parseLong2 != 101 && parseLong2 != 104) {
                        Message message3 = new Message();
                        message3.what = 2;
                        context13 = this.f2302a.f2300a;
                        message3.obj = context13.getString(C0000R.string.pcs_directly_failed);
                        handler7 = this.f2302a.f2301b;
                        if (handler7 != null) {
                            handler8 = this.f2302a.f2301b;
                            handler8.sendMessage(message3);
                        }
                        return;
                    }
                    Message message4 = new Message();
                    message4.what = 3;
                    context12 = this.f2302a.f2300a;
                    message4.obj = context12.getString(C0000R.string.pcs_directly_error_nodevicetoken);
                    handler5 = this.f2302a.f2301b;
                    if (handler5 != null) {
                        handler6 = this.f2302a.f2301b;
                        handler6.sendMessage(message4);
                    }
                }
                parseLong2 = -1;
                if (parseLong2 == 102) {
                }
                Message message42 = new Message();
                message42.what = 3;
                context12 = this.f2302a.f2300a;
                message42.obj = context12.getString(C0000R.string.pcs_directly_error_nodevicetoken);
                handler5 = this.f2302a.f2301b;
                if (handler5 != null) {
                }
            }
            Map map2 = (Map) com.estrongs.fs.impl.i.b.b(a2, "pcs");
            if (map2 != null) {
                Map map3 = map2.get("force_reg_token") != null ? (Map) com.estrongs.fs.impl.i.b.b(a2, (String) map2.get("force_reg_token"), "pcs") : map2;
                if (map3 != null) {
                    String str2 = (String) map3.get("device_token");
                    if (str2 == null) {
                        if (map3.containsKey("error_code")) {
                            try {
                                parseLong = Long.parseLong("" + map3.get("error_code"));
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            if (parseLong != 2 || parseLong == 3) {
                                message.what = 2;
                                context7 = this.f2302a.f2300a;
                                message.obj = context7.getString(C0000R.string.pcs_directly_error_unavaliable);
                            } else {
                                message.what = 2;
                                context8 = this.f2302a.f2300a;
                                message.obj = context8.getString(C0000R.string.pcs_directly_failed);
                            }
                        }
                        parseLong = -1;
                        if (parseLong != 2) {
                        }
                        message.what = 2;
                        context7 = this.f2302a.f2300a;
                        message.obj = context7.getString(C0000R.string.pcs_directly_error_unavaliable);
                    } else if (map3.get("error_msg") == null) {
                        String str3 = map3.get("bduss") + "\n" + str2 + "\n" + map3.get(BDAccountManager.KEY_UID) + "\n临时用户";
                        context9 = this.f2302a.f2300a;
                        message.obj = cl.a(context9, "quikreg:" + com.estrongs.android.util.aw.c(str3));
                        message.what = 1;
                        context10 = this.f2302a.f2300a;
                        com.estrongs.android.pop.q.a(context10).a(str2, System.currentTimeMillis());
                        com.estrongs.android.util.a a4 = com.estrongs.android.util.a.a();
                        if (a4 != null) {
                            a4.a("Direct_Register", "Direct_Register");
                        }
                    }
                } else {
                    message.what = 2;
                    context6 = this.f2302a.f2300a;
                    message.obj = context6.getString(C0000R.string.network_fail);
                }
            } else {
                message.what = 2;
                context5 = this.f2302a.f2300a;
                message.obj = context5.getString(C0000R.string.network_fail);
            }
            handler = this.f2302a.f2301b;
            if (handler != null) {
                handler2 = this.f2302a.f2301b;
                handler2.sendMessage(message);
            }
        }
    }
}
