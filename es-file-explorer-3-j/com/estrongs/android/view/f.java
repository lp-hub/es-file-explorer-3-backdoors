package com.estrongs.android.view;

import android.view.View;
import android.widget.AdapterView;

/* loaded from: classes.dex */
class f implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ e f2835a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(e eVar) {
        this.f2835a = eVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f2835a.a(this.f2835a.e(i), view, i, j);
    }
}
