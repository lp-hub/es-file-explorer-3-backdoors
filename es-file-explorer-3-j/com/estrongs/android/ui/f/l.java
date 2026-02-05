package com.estrongs.android.ui.f;

import android.view.View;
import android.widget.AdapterView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements AdapterView.OnItemLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f2215a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(f fVar) {
        this.f2215a = fVar;
    }

    @Override // android.widget.AdapterView.OnItemLongClickListener
    public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (view.getTag(C0000R.layout.item_listview_favourite) == null) {
            return false;
        }
        ((View.OnLongClickListener) view.getTag(C0000R.layout.item_listview_favourite)).onLongClick(view);
        return true;
    }
}
