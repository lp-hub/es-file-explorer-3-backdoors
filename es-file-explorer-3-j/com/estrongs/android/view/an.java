package com.estrongs.android.view;

import android.R;
import android.app.Activity;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.widget.HeaderGridView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.PullToRefreshGridView;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class an<T> extends cq {

    /* renamed from: a, reason: collision with root package name */
    private float f2745a;
    public final long d;
    protected com.estrongs.android.widget.c<T> e;
    protected PullToRefreshGridView f;
    protected HeaderGridView g;
    protected AdapterView.OnItemClickListener h;
    protected aq<T> i;
    protected TextView j;
    protected int k;
    protected boolean l;
    protected List<T> m;
    protected List<Integer> n;
    protected Map<String, com.estrongs.android.ui.drag.h> o;
    protected com.estrongs.android.ui.drag.d p;
    protected LinearLayout q;
    protected TextView r;

    public an(Activity activity, ViewGroup viewGroup, boolean z) {
        super(activity, viewGroup, z);
        this.d = System.currentTimeMillis();
        this.l = false;
        this.m = new LinkedList();
        this.n = new LinkedList();
        this.o = new HashMap();
        this.q = null;
        this.r = null;
        this.f2745a = 0.0f;
        this.e = new com.estrongs.android.widget.c<>();
        this.e.a(new ao(this));
        this.f = (PullToRefreshGridView) l(C0000R.id.pull_refresh_grid);
        this.g = (HeaderGridView) this.f.j();
        this.f.a(false);
        this.f.a(PullToRefreshBase.Mode.DISABLED);
        this.g.setAdapter((ListAdapter) this.e);
        this.g.setPadding(6, 6, 6, 6);
        this.g.setScrollBarStyle(33554432);
        this.g.setOnItemClickListener(new ap(this));
        this.j = (TextView) l(R.id.empty);
        this.j.setVisibility(8);
        this.q = (LinearLayout) l(C0000R.id.progressView);
        this.r = (TextView) this.q.findViewById(C0000R.id.progressMessage);
        this.q.setVisibility(8);
    }

    public boolean A() {
        return this.l;
    }

    public float B() {
        return this.f2745a;
    }

    public int C() {
        return this.k;
    }

    public AbsListView D() {
        return this.g;
    }

    public Map<String, com.estrongs.android.ui.drag.h> E() {
        return this.o;
    }

    @Override // com.estrongs.android.view.cq
    protected int a() {
        return C0000R.layout.content_grid;
    }

    public void a(int i) {
        int i2 = 5;
        this.k = i;
        DisplayMetrics displayMetrics = this.ad.getResources().getDisplayMetrics();
        boolean a2 = com.estrongs.android.pop.utils.ca.a(this.ad);
        boolean z = this.ad.getResources().getConfiguration().orientation == 1;
        if (i == 0) {
            if (a2) {
                i2 = 4;
            } else {
                float f = (displayMetrics.widthPixels / displayMetrics.densityDpi) * 25.4f;
                if (!z) {
                    i2 = ((int) ((f / 13.0f) + 0.5f)) - 2;
                } else if (f < 50.0f) {
                    i2 = 3;
                } else if (f <= 60.0f) {
                    i2 = 4;
                }
            }
            this.g.setNumColumns(i2);
        } else if (i == 2) {
            if (a2) {
                i2 = 6;
            } else {
                float f2 = (displayMetrics.widthPixels / displayMetrics.densityDpi) * 25.4f;
                if (!z) {
                    i2 = ((int) ((f2 / 8.0f) + 0.5f)) - 2;
                } else if (f2 >= 50.0f) {
                    i2 = f2 > 60.0f ? 7 : 6;
                }
            }
            this.g.setNumColumns(i2);
        } else if (i == 1) {
            if (!a2) {
                float f3 = (displayMetrics.widthPixels / displayMetrics.densityDpi) * 25.4f;
                if (!z) {
                    i2 = ((int) ((f3 / 10.0f) + 0.5f)) - 2;
                } else if (f3 < 50.0f) {
                    i2 = 4;
                } else if (f3 > 60.0f) {
                    i2 = 6;
                }
            }
            this.g.setNumColumns(i2);
        } else if (!a2 || z) {
            this.g.setNumColumns(1);
            i2 = 1;
        } else {
            this.g.setNumColumns(2);
            i2 = 1;
        }
        this.f2745a = (int) (((displayMetrics.widthPixels - ((8.0f * displayMetrics.density) + 0.5f)) / i2) - ((12.0f * displayMetrics.density) + 0.5f));
        this.e.notifyDataSetChanged();
    }

    public void a(View.OnTouchListener onTouchListener) {
        this.g.setOnTouchListener(onTouchListener);
        this.j.setOnTouchListener(onTouchListener);
        this.q.setOnTouchListener(onTouchListener);
    }

    public void a(AdapterView.OnItemClickListener onItemClickListener) {
        this.h = onItemClickListener;
    }

    public void a(AdapterView.OnItemLongClickListener onItemLongClickListener) {
        this.g.setOnItemLongClickListener(onItemLongClickListener);
    }

    public void a(aq<T> aqVar) {
        this.i = aqVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(com.estrongs.android.widget.d dVar) {
        this.e.a(dVar);
    }

    public void a(boolean z) {
        this.l = z;
        if (this.l) {
            this.e.notifyDataSetChanged();
        } else {
            c(-2);
        }
    }

    public void b(List<T> list) {
        if (this.p != null) {
            this.e.a(this.p);
        }
        this.e.a(list);
    }

    public void c(int i) {
        int i2 = 0;
        int size = this.m.size();
        List<T> h = h();
        if (i == -1) {
            this.m.clear();
            this.n.clear();
            this.o.clear();
            Iterator<T> it = h.iterator();
            while (it.hasNext()) {
                this.m.add(it.next());
                this.n.add(Integer.valueOf(i2));
                i2++;
            }
            e();
        } else if (i == -2) {
            v();
            e();
        } else if (i == -4) {
            int[] z = z();
            if (z != null) {
                this.m.clear();
                this.n.clear();
                for (int i3 = z[0]; i3 <= z[1]; i3++) {
                    this.m.add(h.get(i3));
                    this.n.add(Integer.valueOf(i3));
                }
                e();
            }
        } else if (i >= 0 && i < h.size()) {
            T t = h.get(i);
            if (this.n.contains(Integer.valueOf(i))) {
                this.m.remove(t);
                this.n.remove(Integer.valueOf(i));
            } else {
                this.m.add(t);
                this.n.add(Integer.valueOf(i));
            }
        }
        if (this.i == null || size == this.m.size()) {
            return;
        }
        this.i.a(this.m);
    }

    public void c(String str) {
        this.j.setVisibility(8);
        this.r.setText(str);
        this.q.setVisibility(0);
        this.g.setVisibility(8);
    }

    public int d() {
        return h().size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(boolean z) {
        com.estrongs.android.ui.drag.h remove;
        if (z) {
            Iterator<com.estrongs.android.ui.drag.h> it = this.o.values().iterator();
            while (it.hasNext()) {
                it.next().e();
            }
            this.o.clear();
            return;
        }
        if (g(0) == null || (remove = this.o.remove(g(0))) == null) {
            return;
        }
        com.estrongs.android.ui.drag.h hVar = new com.estrongs.android.ui.drag.h();
        hVar.a(0);
        hVar.a(remove.b());
        hVar.a(remove.c());
        this.o.put(g(0), hVar);
    }

    public T e(int i) {
        return this.e.getItem(i);
    }

    public void e() {
        this.e.notifyDataSetChanged();
    }

    public void f(int i) {
        this.q.setVisibility(8);
        this.j.setText(i);
        this.g.setEmptyView(this.j);
    }

    public String g(int i) {
        return "" + i;
    }

    public List<T> h() {
        return this.e.a();
    }

    public boolean h(int i) {
        return this.m.contains(e(i)) & this.n.contains(Integer.valueOf(i));
    }

    public void s() {
        this.j.setVisibility(8);
        this.q.setVisibility(0);
        this.g.setVisibility(8);
    }

    public void t() {
        this.j.setVisibility(8);
        this.j.setText("");
        this.q.setVisibility(0);
        this.r.setText(C0000R.string.recycle_busying);
        this.g.setVisibility(8);
    }

    public void u() {
        this.q.setVisibility(8);
        this.g.setVisibility(0);
    }

    public void v() {
        this.m.clear();
        this.n.clear();
        d(true);
    }

    public List<T> w() {
        return this.m;
    }

    public List<T> x() {
        LinkedList linkedList = new LinkedList();
        List<T> h = h();
        Collections.sort(this.n);
        Iterator<Integer> it = this.n.iterator();
        while (it.hasNext()) {
            linkedList.add(h.get(it.next().intValue()));
        }
        return linkedList;
    }

    public boolean y() {
        int[] z = z();
        return z != null && z[1] - z[0] >= this.n.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int[] z() {
        if (this.n.size() < 2) {
            return null;
        }
        int intValue = this.n.get(0).intValue();
        int intValue2 = this.n.get(0).intValue();
        Iterator<Integer> it = this.n.iterator();
        while (true) {
            int i = intValue;
            int i2 = intValue2;
            if (!it.hasNext()) {
                return new int[]{i, i2};
            }
            intValue2 = it.next().intValue();
            if (i > intValue2) {
                intValue = intValue2;
                intValue2 = i2;
            } else if (i2 < intValue2) {
                intValue = i;
            } else {
                intValue2 = i2;
                intValue = i;
            }
        }
    }
}
