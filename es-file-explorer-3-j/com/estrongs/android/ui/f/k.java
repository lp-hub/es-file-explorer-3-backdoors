package com.estrongs.android.ui.f;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ExpandableListView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k implements ExpandableListView.OnChildClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Handler f2213a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ f f2214b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(f fVar, Handler handler) {
        this.f2214b = fVar;
        this.f2213a = handler;
    }

    @Override // android.widget.ExpandableListView.OnChildClickListener
    public boolean onChildClick(ExpandableListView expandableListView, View view, int i, int i2, long j) {
        Message message = new Message();
        message.what = 0;
        message.arg1 = i;
        message.arg2 = i2;
        this.f2213a.sendMessage(message);
        return true;
    }
}
