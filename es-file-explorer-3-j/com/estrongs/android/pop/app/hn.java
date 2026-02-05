package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

/* loaded from: classes.dex */
class hn implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RecommAcitivity f877a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hn(RecommAcitivity recommAcitivity) {
        this.f877a = recommAcitivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        Intent intent = new Intent(this.f877a, (Class<?>) RecommItemDetailAcitivity.class);
        intent.putExtra("position", i);
        this.f877a.startActivity(intent);
    }
}
