package com.estrongs.android.pop.app;

import android.view.View;
import android.widget.BaseAdapter;
import com.estrongs.android.pop.C0000R;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
class bv implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f544a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bt f545b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bv(bt btVar, List list) {
        this.f545b = btVar;
        this.f544a = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean c;
        LinkedList linkedList;
        LinkedList linkedList2;
        Object obj;
        LinkedList linkedList3;
        BaseAdapter baseAdapter;
        LinkedList linkedList4;
        View view;
        LinkedList linkedList5;
        LinkedList linkedList6;
        View view2;
        View view3;
        c = this.f545b.f542b.c();
        if (c) {
            linkedList4 = this.f545b.f542b.f356b;
            view = this.f545b.f542b.i;
            linkedList4.remove(view);
            linkedList5 = this.f545b.f542b.f356b;
            linkedList5.addAll(this.f544a);
            linkedList6 = this.f545b.f542b.f356b;
            view2 = this.f545b.f542b.i;
            linkedList6.add(view2);
            view3 = this.f545b.f542b.i;
            view3.findViewById(C0000R.id.progress).setVisibility(8);
        } else {
            linkedList = this.f545b.f542b.f356b;
            linkedList.clear();
            linkedList2 = this.f545b.f542b.f356b;
            obj = this.f545b.f542b.d;
            linkedList2.add(obj);
            linkedList3 = this.f545b.f542b.f356b;
            linkedList3.addAll(this.f544a);
        }
        baseAdapter = this.f545b.f542b.k;
        baseAdapter.notifyDataSetChanged();
    }
}
