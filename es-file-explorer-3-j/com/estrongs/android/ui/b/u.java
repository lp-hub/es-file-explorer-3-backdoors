package com.estrongs.android.ui.b;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ t f1882a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(t tVar) {
        this.f1882a = tVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        bz bzVar;
        Context context;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        String str = null;
        int i2 = -1;
        dialogInterface.dismiss();
        if (i == 0) {
            int a2 = com.estrongs.android.pop.a.a.a("ftp");
            if (a2 != -1) {
                bzVar = null;
                str = "ftp";
                i2 = a2;
            } else {
                context5 = this.f1882a.f1881b;
                bzVar = new bz(context5, "ftp", true);
                i2 = a2;
            }
        } else if (i == 1) {
            int a3 = com.estrongs.android.pop.a.a.a("sftp");
            if (a3 != -1) {
                bzVar = null;
                str = "sftp";
                i2 = a3;
            } else {
                context3 = this.f1882a.f1881b;
                bzVar = new bz(context3, "sftp", true);
                i2 = a3;
            }
        } else if (i == 2) {
            int a4 = com.estrongs.android.pop.a.a.a("ftp");
            if (a4 != -1) {
                bzVar = null;
                str = "ftps";
                i2 = a4;
            } else {
                context2 = this.f1882a.f1881b;
                bzVar = new bz(context2, "ftps", true);
                i2 = a4;
            }
        } else if (i == 3) {
            int a5 = com.estrongs.android.pop.a.a.a("webdav");
            if (a5 != -1) {
                bzVar = null;
                str = "webdav";
                i2 = a5;
            } else {
                context = this.f1882a.f1881b;
                bzVar = new bz(context, "webdav", true);
                i2 = a5;
            }
        } else {
            bzVar = null;
        }
        if (str == null) {
            bzVar.a();
        } else {
            context4 = this.f1882a.f1881b;
            com.estrongs.android.pop.a.a.a((Activity) context4, str, i2, new v(this, str));
        }
    }
}
