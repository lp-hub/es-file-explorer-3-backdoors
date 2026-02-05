package com.estrongs.android.pop.app;

import android.util.SparseArray;
import android.widget.ImageView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class hv implements com.estrongs.android.widget.av {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RecommItemImageViewer f886a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hv(RecommItemImageViewer recommItemImageViewer) {
        this.f886a = recommItemImageViewer;
    }

    @Override // com.estrongs.android.widget.av
    public void a(int i) {
        this.f886a.findViewById(C0000R.id.indicator_layout).setBackgroundColor(-1627389952);
    }

    @Override // com.estrongs.android.widget.av
    public void a(int i, float f) {
    }

    @Override // com.estrongs.android.widget.av
    public void b(int i) {
    }

    @Override // com.estrongs.android.widget.av
    public void c(int i) {
        SparseArray sparseArray;
        int i2;
        SparseArray sparseArray2;
        int i3;
        sparseArray = this.f886a.h;
        i2 = this.f886a.i;
        ((ImageView) sparseArray.get(i2)).setImageResource(C0000R.drawable.dot_unselected);
        this.f886a.i = i;
        sparseArray2 = this.f886a.h;
        i3 = this.f886a.i;
        ((ImageView) sparseArray2.get(i3)).setImageResource(C0000R.drawable.dot_selected);
        this.f886a.findViewById(C0000R.id.indicator_layout).setBackgroundColor(0);
    }

    @Override // com.estrongs.android.widget.av
    public void d(int i) {
    }
}
