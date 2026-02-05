package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
class ak extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ NaviListView f2605a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(NaviListView naviListView) {
        this.f2605a = naviListView;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        super.handleMessage(message);
        this.f2605a.b();
    }
}
