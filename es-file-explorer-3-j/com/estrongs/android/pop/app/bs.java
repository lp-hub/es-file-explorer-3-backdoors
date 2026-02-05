package com.estrongs.android.pop.app;

import android.view.View;
import android.widget.BaseAdapter;
import com.estrongs.android.pop.C0000R;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
class bs implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f539a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bq f540b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bs(bq bqVar, List list) {
        this.f540b = bqVar;
        this.f539a = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        LinkedList linkedList;
        LinkedList linkedList2;
        Object obj;
        LinkedList linkedList3;
        boolean c;
        BaseAdapter baseAdapter;
        LinkedList linkedList4;
        View view;
        View view2;
        linkedList = this.f540b.f537a.f356b;
        linkedList.clear();
        linkedList2 = this.f540b.f537a.f356b;
        obj = this.f540b.f537a.d;
        linkedList2.add(obj);
        linkedList3 = this.f540b.f537a.f356b;
        linkedList3.addAll(this.f539a);
        c = this.f540b.f537a.c();
        if (c) {
            linkedList4 = this.f540b.f537a.f356b;
            view = this.f540b.f537a.i;
            linkedList4.add(view);
            view2 = this.f540b.f537a.i;
            view2.findViewById(C0000R.id.progress).setVisibility(8);
        }
        baseAdapter = this.f540b.f537a.k;
        baseAdapter.notifyDataSetChanged();
    }
}
