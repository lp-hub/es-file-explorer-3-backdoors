package com.estrongs.android.ftp;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class e extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ESFtpService f313a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(ESFtpService eSFtpService) {
        this.f313a = eSFtpService;
    }

    @Override // android.os.Handler
    public synchronized void handleMessage(Message message) {
        int i;
        int i2;
        int i3;
        int i4;
        String a2;
        String a3;
        int i5;
        String a4;
        int i6;
        String a5;
        String a6;
        String a7;
        a e;
        int i7 = 1;
        synchronized (this) {
            switch (message.what) {
                case 1:
                    if (message.arg1 > 0 && message.arg2 > 0) {
                        i7 = 3;
                    } else if (message.arg1 <= 0) {
                        i7 = message.arg2 > 0 ? 2 : 0;
                    }
                    this.f313a.e = i7;
                    String str = null;
                    if (i7 == 0 && (e = a.e()) != null) {
                        String b2 = com.estrongs.android.pop.esclasses.c.b(C0000R.string.preference_ftpsvr_visit);
                        if (b2 == null) {
                            b2 = (String) this.f313a.getText(C0000R.string.preference_ftpsvr_visit);
                        }
                        str = b2 + "ftp:/" + e.g().toString() + ":" + e.h() + "/";
                    }
                    ESFtpService eSFtpService = this.f313a;
                    if (i7 != 0) {
                        StringBuilder sb = new StringBuilder();
                        a6 = this.f313a.a(C0000R.string.notification_es_ftp_svr_transfer);
                        str = sb.append(a6).append("...").toString();
                    } else if (str == null) {
                        StringBuilder sb2 = new StringBuilder();
                        a7 = this.f313a.a(C0000R.string.notification_es_ftp_svr_idle);
                        str = sb2.append(a7).append("...").toString();
                    }
                    eSFtpService.a(i7, str);
                    this.f313a.e = i7;
                    break;
                case 2:
                    String str2 = com.estrongs.fs.c.d.c(message.arg1) + "/s";
                    String str3 = com.estrongs.fs.c.d.c(message.arg2) + "/s";
                    i = this.f313a.e;
                    if (i != 1) {
                        i2 = this.f313a.e;
                        if (i2 != 2) {
                            i3 = this.f313a.e;
                            if (i3 == 3) {
                                ESFtpService eSFtpService2 = this.f313a;
                                i4 = this.f313a.e;
                                StringBuilder sb3 = new StringBuilder();
                                a2 = this.f313a.a(C0000R.string.notification_es_ftp_svr_downloading_short);
                                StringBuilder append = sb3.append(a2).append(": ").append(str2).append(", ");
                                a3 = this.f313a.a(C0000R.string.notification_es_ftp_svr_uploading_short);
                                eSFtpService2.a(i4, append.append(a3).append(": ").append(str3).toString());
                                break;
                            }
                        } else {
                            ESFtpService eSFtpService3 = this.f313a;
                            i5 = this.f313a.e;
                            StringBuilder sb4 = new StringBuilder();
                            a4 = this.f313a.a(C0000R.string.notification_es_ftp_svr_uploading);
                            eSFtpService3.a(i5, sb4.append(a4).append(": ").append(str3).toString());
                            break;
                        }
                    } else {
                        ESFtpService eSFtpService4 = this.f313a;
                        i6 = this.f313a.e;
                        StringBuilder sb5 = new StringBuilder();
                        a5 = this.f313a.a(C0000R.string.progress_downloading);
                        eSFtpService4.a(i6, sb5.append(a5).append(": ").append(str2).toString());
                        break;
                    }
                    break;
            }
        }
    }
}
