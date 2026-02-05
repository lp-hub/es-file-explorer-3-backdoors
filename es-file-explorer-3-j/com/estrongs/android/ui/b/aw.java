package com.estrongs.android.ui.b;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aw implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ az f1644a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ av f1645b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(av avVar, az azVar) {
        this.f1645b = avVar;
        this.f1644a = azVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f1644a.a(i);
    }
}
