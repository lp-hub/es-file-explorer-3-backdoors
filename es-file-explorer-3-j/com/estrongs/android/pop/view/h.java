package com.estrongs.android.pop.view;

import android.os.Handler;
import android.os.Message;
import org.apache.commons.net.ftp.FTPReply;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1413a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(FileExplorerActivity fileExplorerActivity) {
        this.f1413a = fileExplorerActivity;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 0:
                this.f1413a.a((String) null);
                return;
            case 1:
                this.f1413a.f(message.arg1);
                return;
            case 2:
                this.f1413a.g(message.arg1);
                return;
            case 103:
                this.f1413a.n();
                return;
            case 104:
            case 106:
            default:
                return;
            case FTPReply.SYSTEM_STATUS /* 211 */:
                this.f1413a.finish();
                return;
        }
    }
}
