package com.estrongs.android.pop.app;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.ui.view.RecommendListView;

/* loaded from: classes.dex */
class cv extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ OpenRecomm f641a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cv(OpenRecomm openRecomm) {
        this.f641a = openRecomm;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Intent intent;
        Intent intent2;
        Intent intent3;
        boolean z;
        Intent intent4;
        String str;
        RecommendListView recommendListView;
        RecommendListView recommendListView2;
        RecommendListView recommendListView3;
        RecommendListView recommendListView4;
        RecommendListView recommendListView5;
        RecommendListView recommendListView6;
        switch (message.arg1) {
            case 123457:
            case 123458:
            case 123459:
            default:
                return;
            case 123460:
                recommendListView6 = this.f641a.c;
                recommendListView6.e(message.obj);
                return;
            case 123461:
                recommendListView5 = this.f641a.c;
                recommendListView5.a(message.obj);
                return;
            case 123462:
                recommendListView4 = this.f641a.c;
                recommendListView4.d(message.obj);
                return;
            case 123463:
                recommendListView3 = this.f641a.c;
                recommendListView3.c(message.obj);
                return;
            case 123464:
                recommendListView2 = this.f641a.c;
                recommendListView2.b(message.obj);
                return;
            case 123465:
                recommendListView = this.f641a.c;
                recommendListView.a(message.arg2);
                return;
            case 123466:
                String str2 = (String) message.obj;
                if (str2 != null) {
                    intent = this.f641a.l;
                    if (intent != null) {
                        OpenRecomm openRecomm = this.f641a;
                        intent2 = this.f641a.l;
                        com.estrongs.android.pop.view.utils.t[] a2 = com.estrongs.android.pop.view.utils.n.a(openRecomm, intent2);
                        if (a2 != null) {
                            for (int i = 0; i < a2.length; i++) {
                                if (a2[i].c != null && a2[i].c.equalsIgnoreCase(str2)) {
                                    intent3 = this.f641a.l;
                                    intent3.setClassName(a2[i].c, a2[i].d);
                                    z = this.f641a.i;
                                    if (z) {
                                        str = this.f641a.k;
                                        String bk = com.estrongs.android.util.ak.bk(com.estrongs.android.util.ak.d(str));
                                        if (bk != null && !"".equals(bk)) {
                                            com.estrongs.android.pop.view.utils.n.a(this.f641a, bk, new com.estrongs.android.pop.view.utils.u(a2[i].c, a2[i].d));
                                        }
                                    }
                                    OpenRecomm openRecomm2 = this.f641a;
                                    intent4 = this.f641a.l;
                                    openRecomm2.startActivity(intent4);
                                    this.f641a.finish();
                                }
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
        }
    }
}
