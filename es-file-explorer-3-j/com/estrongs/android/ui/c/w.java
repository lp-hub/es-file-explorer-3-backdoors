package com.estrongs.android.ui.c;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

/* loaded from: classes.dex */
class w extends com.estrongs.android.widget.c<com.estrongs.fs.g> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ u f1924a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(u uVar) {
        this.f1924a = uVar;
    }

    @Override // com.estrongs.android.widget.c, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        f fVar;
        boolean z;
        boolean z2;
        Activity activity;
        List list;
        com.estrongs.a.a aVar = (com.estrongs.a.a) this.f1924a.e(i).getExtra("task");
        if (view == null) {
            activity = this.f1924a.ad;
            fVar = new f(activity, aVar);
            fVar.b().setTag(fVar);
            list = this.f1924a.c;
            list.add(fVar);
        } else {
            fVar = (f) view.getTag();
            fVar.c();
            fVar.a(aVar);
        }
        z = this.f1924a.l;
        fVar.b(z);
        z2 = this.f1924a.l;
        if (z2) {
            fVar.a(this.f1924a.h(i));
        }
        return fVar.b();
    }
}
