package com.estrongs.android.ui.b;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.ui.view.NaviListView;

/* loaded from: classes.dex */
class ep extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ NaviListView f1790a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ eo f1791b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ep(eo eoVar, NaviListView naviListView) {
        this.f1791b = eoVar;
        this.f1790a = naviListView;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        int i = message.what;
        int i2 = message.arg1;
        if (i == 1 && message.arg2 == 0) {
            this.f1790a.a();
        }
    }
}
