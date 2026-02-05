package com.estrongs.android.ui.b;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ap implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ag f1633a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap(ag agVar) {
        this.f1633a = agVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        DialogInterface.OnClickListener onClickListener;
        ar arVar = (ar) adapterView.getAdapter();
        arVar.a(i);
        arVar.notifyDataSetChanged();
        onClickListener = this.f1633a.mItemSelectedListener;
        onClickListener.onClick(this.f1633a, i);
    }
}
