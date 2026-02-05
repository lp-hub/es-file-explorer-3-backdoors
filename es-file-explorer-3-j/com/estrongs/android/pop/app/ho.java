package com.estrongs.android.pop.app;

import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;
import com.estrongs.android.ui.view.RecommendListView;

/* loaded from: classes.dex */
class ho extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RecommAcitivity f878a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ho(RecommAcitivity recommAcitivity) {
        this.f878a = recommAcitivity;
    }

    @Override // android.os.Handler
    public synchronized void handleMessage(Message message) {
        RecommendListView recommendListView;
        RecommendListView recommendListView2;
        RecommendListView recommendListView3;
        RecommendListView recommendListView4;
        RecommendListView recommendListView5;
        RecommendListView recommendListView6;
        ProgressBar progressBar;
        RecommendListView recommendListView7;
        ProgressBar progressBar2;
        switch (message.arg1) {
            case 123457:
                com.estrongs.android.pop.view.utils.v[] d = com.estrongs.android.pop.view.utils.n.b().d();
                recommendListView7 = this.f878a.f374b;
                recommendListView7.a(d);
                progressBar2 = this.f878a.f373a;
                progressBar2.setVisibility(8);
                break;
            case 123458:
                progressBar = this.f878a.f373a;
                progressBar.setVisibility(8);
                break;
            case 123460:
                recommendListView6 = this.f878a.f374b;
                recommendListView6.e(message.obj);
                break;
            case 123461:
                recommendListView5 = this.f878a.f374b;
                recommendListView5.a(message.obj);
                break;
            case 123462:
                recommendListView4 = this.f878a.f374b;
                recommendListView4.d(message.obj);
                break;
            case 123463:
                recommendListView3 = this.f878a.f374b;
                recommendListView3.c(message.obj);
                break;
            case 123464:
                recommendListView2 = this.f878a.f374b;
                recommendListView2.b(message.obj);
                break;
            case 123465:
                recommendListView = this.f878a.f374b;
                recommendListView.a(message.arg2);
                break;
        }
    }
}
