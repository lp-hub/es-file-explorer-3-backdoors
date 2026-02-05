package com.estrongs.android.ui.a;

import android.content.DialogInterface;
import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
class bm implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f1529a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bl f1530b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bm(bl blVar, boolean z) {
        this.f1530b = blVar;
        this.f1529a = z;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Handler handler;
        Handler handler2;
        if (!this.f1529a) {
            i++;
        }
        if (i == 0) {
            Message message = new Message();
            message.what = 2;
            message.arg1 = this.f1530b.f1527a;
            message.arg2 = this.f1530b.f1528b;
            handler2 = this.f1530b.d.n;
            handler2.sendMessage(message);
        } else if (i == 1) {
            Message message2 = new Message();
            message2.what = 101;
            message2.arg1 = this.f1530b.f1527a;
            message2.arg2 = this.f1530b.f1528b;
            handler = this.f1530b.d.n;
            handler.sendMessage(message2);
        }
        dialogInterface.dismiss();
    }
}
