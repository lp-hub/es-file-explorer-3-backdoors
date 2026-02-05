package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

/* loaded from: classes.dex */
class cu implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ OpenRecomm f640a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cu(OpenRecomm openRecomm) {
        this.f640a = openRecomm;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        Intent intent;
        Intent intent2;
        boolean z;
        Intent intent3;
        String str;
        try {
            com.estrongs.android.pop.view.utils.t tVar = (com.estrongs.android.pop.view.utils.t) view.getTag();
            if (tVar != null) {
                intent = this.f640a.l;
                if (intent == null) {
                    return;
                }
                intent2 = this.f640a.l;
                intent2.setClassName(tVar.c, tVar.d);
                z = this.f640a.i;
                if (z) {
                    str = this.f640a.k;
                    String bk = com.estrongs.android.util.ak.bk(com.estrongs.android.util.ak.d(str));
                    if (bk != null && !"".equals(bk)) {
                        com.estrongs.android.pop.view.utils.n.a(this.f640a, bk, new com.estrongs.android.pop.view.utils.u(tVar.c, tVar.d));
                    }
                }
                OpenRecomm openRecomm = this.f640a;
                intent3 = this.f640a.l;
                openRecomm.startActivity(intent3);
                this.f640a.finish();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
