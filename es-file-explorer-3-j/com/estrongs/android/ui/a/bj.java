package com.estrongs.android.ui.a;

import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.df;
import com.estrongs.android.ui.e.fk;
import java.io.File;

/* loaded from: classes.dex */
class bj implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f1524a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ boolean f1525b;
    final /* synthetic */ bi c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bj(bi biVar, boolean z, boolean z2) {
        this.c = biVar;
        this.f1524a = z;
        this.f1525b = z2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        Handler handler;
        Handler handler2;
        int i2 = !this.f1524a ? i + 1 : i;
        if (i2 == 0) {
            Message message = new Message();
            message.what = 2;
            message.arg1 = this.c.f1523b;
            message.arg2 = this.c.c;
            handler2 = this.c.d.n;
            handler2.sendMessage(message);
        } else {
            if (!this.f1525b) {
                i2++;
            }
            if (i2 == 1) {
                Message message2 = new Message();
                message2.what = 101;
                message2.arg1 = this.c.f1523b;
                message2.arg2 = this.c.c;
                handler = this.c.d.n;
                handler.sendMessage(message2);
            } else if (i2 == 2) {
                fileExplorerActivity2 = this.c.d.c;
                String str = this.c.f1522a.f1488b;
                fileExplorerActivity3 = this.c.d.c;
                fk.a(fileExplorerActivity2, str, com.estrongs.fs.d.a(fileExplorerActivity3).j(this.c.f1522a.c), new bk(this));
            } else if (i2 == 3) {
                fileExplorerActivity = this.c.d.c;
                new df(fileExplorerActivity, com.estrongs.android.util.ak.A(this.c.f1522a.b())).a();
            } else {
                File file = new File("/sdcard/.estrongs/bookmark", this.c.f1522a.f1488b);
                if (file.exists()) {
                    com.estrongs.android.util.at.c(file);
                    this.c.d.notifyDataSetChanged();
                }
            }
        }
        dialogInterface.dismiss();
    }
}
