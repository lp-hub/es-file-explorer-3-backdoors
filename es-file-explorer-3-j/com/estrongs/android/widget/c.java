package com.estrongs.android.widget;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.estrongs.android.ui.drag.DragGrid;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class c<T> extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    private f f2913a;
    protected List<T> c = new LinkedList();
    protected d d;
    protected com.estrongs.android.ui.drag.d e;

    public List<T> a() {
        return this.c;
    }

    public void a(com.estrongs.android.ui.drag.d dVar) {
        this.e = dVar;
    }

    public void a(d dVar) {
        this.d = dVar;
    }

    public void a(f fVar) {
        this.f2913a = fVar;
    }

    public void a(List<T> list) {
        this.c = list;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.c == null) {
            return 0;
        }
        return this.c.size();
    }

    @Override // android.widget.Adapter
    public T getItem(int i) {
        if (this.c == null || i < 0 || i >= this.c.size()) {
            return null;
        }
        return this.c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        e eVar;
        View view2;
        if (view == null) {
            view = this.d.a();
        }
        e eVar2 = (e) view.getTag();
        if (eVar2 == null) {
            e b2 = this.d.b(view);
            view.setTag(b2);
            eVar = b2;
            view2 = view;
        } else {
            if (this.d.a(eVar2)) {
                view = this.d.a();
                eVar2 = this.d.b(view);
                view.setTag(eVar2);
            }
            eVar = eVar2;
            view2 = view;
        }
        eVar.j = getItem(i);
        if (this.e != null) {
            DragGrid dragGrid = (DragGrid) view2;
            dragGrid.a(this.e);
            this.e.a((com.estrongs.android.ui.drag.o) dragGrid);
        }
        this.d.a(eVar, i);
        return view2;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        if (this.f2913a != null) {
            this.f2913a.a();
        }
        super.notifyDataSetChanged();
        if (this.f2913a != null) {
            this.f2913a.b();
        }
    }
}
