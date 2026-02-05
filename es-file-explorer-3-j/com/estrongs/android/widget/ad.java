package com.estrongs.android.widget;

import android.view.View;
import android.widget.AdapterView;
import java.util.ArrayList;

/* loaded from: classes.dex */
class ad implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ab f2885a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(ab abVar) {
        this.f2885a = abVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f2885a.b().e(i));
        this.f2885a.l.a(arrayList);
        this.f2885a.dismiss();
    }
}
