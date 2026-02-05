package com.estrongs.android.ui.c;

import android.app.Activity;
import android.view.View;
import android.widget.AdapterView;
import com.estrongs.android.pop.view.utils.AppRunner;

/* loaded from: classes.dex */
class v implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ u f1923a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(u uVar) {
        this.f1923a = uVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        boolean z;
        Activity activity;
        f fVar = (f) view.getTag();
        z = this.f1923a.l;
        if (z) {
            fVar.a(false);
            this.f1923a.c(i);
            fVar.a(this.f1923a.h(i));
            return;
        }
        com.estrongs.a.a a2 = fVar.a();
        int taskStatus = a2.getTaskStatus();
        if (a2 instanceof com.estrongs.fs.b.q) {
            if (taskStatus == 1) {
                fVar.a().execute();
            } else if (taskStatus == 3) {
                fVar.a().resume();
            } else if (taskStatus == 5) {
                fVar.a(fVar.a());
                fVar.a().execute();
            } else if (taskStatus == 2) {
                fVar.a().requsestPause();
            }
        }
        if (taskStatus == 4) {
            String optString = a2.summary().optString("target");
            activity = this.f1923a.ad;
            AppRunner.a(activity, optString, optString);
        }
    }
}
