package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

/* loaded from: classes.dex */
class hq implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RecommItemDetailAcitivity f880a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hq(RecommItemDetailAcitivity recommItemDetailAcitivity) {
        this.f880a = recommItemDetailAcitivity;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        int i2;
        Intent intent = new Intent(this.f880a, (Class<?>) RecommItemImageViewer.class);
        i2 = this.f880a.f;
        intent.putExtra("position", i2);
        intent.putExtra("index", i);
        this.f880a.startActivity(intent);
    }
}
