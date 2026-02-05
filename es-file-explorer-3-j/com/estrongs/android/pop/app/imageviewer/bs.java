package com.estrongs.android.pop.app.imageviewer;

import android.view.View;
import android.widget.AdapterView;

/* loaded from: classes.dex */
class bs implements AdapterView.OnItemSelectedListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ViewImage21 f987a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bs(ViewImage21 viewImage21) {
        this.f987a = viewImage21;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        boolean z;
        if (this.f987a.c != i) {
            ViewImage21 viewImage21 = this.f987a;
            z = this.f987a.t;
            viewImage21.a(i, z);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
