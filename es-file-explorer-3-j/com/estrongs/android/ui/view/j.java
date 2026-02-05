package com.estrongs.android.ui.view;

import android.app.Activity;
import com.estrongs.android.pop.C0000R;
import java.text.MessageFormat;

/* loaded from: classes.dex */
class j implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f2637a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(i iVar) {
        this.f2637a = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        String m;
        String str2;
        String format;
        Activity activity;
        String m2;
        String str3;
        str = this.f2637a.f2636a.r;
        if (str.equals("sftp")) {
            m2 = this.f2637a.f2636a.m(C0000R.string.server_not_exist);
            StringBuilder append = new StringBuilder().append("SFTP(");
            str3 = this.f2637a.f2636a.C;
            format = MessageFormat.format(m2, append.append(com.estrongs.android.util.ak.a(str3)).append(")").toString());
        } else {
            m = this.f2637a.f2636a.m(C0000R.string.server_not_exist);
            StringBuilder append2 = new StringBuilder().append("FTP(");
            str2 = this.f2637a.f2636a.C;
            format = MessageFormat.format(m, append2.append(com.estrongs.android.util.ak.a(str2)).append(")").toString());
        }
        activity = this.f2637a.f2636a.ad;
        z.a(activity, format, 1).show();
    }
}
