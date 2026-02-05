package com.estrongs.android.widget;

import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class am implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ah f2893a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(ah ahVar) {
        this.f2893a = ahVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        com.estrongs.fs.g e = this.f2893a.b().e(i);
        if (e.getFileType().a()) {
            this.f2893a.i.a(e);
            if (this.f2893a.n != null) {
                Object extra = e.getExtra("item_count");
                if (extra != null) {
                    this.f2893a.n.setText(e.getName() + "(" + extra + ")");
                } else {
                    this.f2893a.n.setText(e.getName());
                }
            }
        }
    }
}
