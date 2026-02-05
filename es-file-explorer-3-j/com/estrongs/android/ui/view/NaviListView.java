package com.estrongs.android.ui.view;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;

/* loaded from: classes.dex */
public class NaviListView extends ExpandableListView implements AbsListView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    private LinearLayout f2580a;

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.android.ui.a.s f2581b;
    private int c;
    private int d;
    private View e;
    private Handler f;
    private final int g;

    public NaviListView(Context context) {
        super(context);
        this.c = -1;
        this.g = 0;
    }

    public NaviListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = -1;
        this.g = 0;
    }

    public NaviListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = -1;
        this.g = 0;
    }

    private View a(int i) {
        return e().get(i);
    }

    private void c() {
        if (this.f2580a == null) {
            return;
        }
        if (this.f == null) {
            this.f = new ak(this);
        }
        this.f.removeMessages(0);
        this.f.sendEmptyMessage(0);
    }

    private int d() {
        if (this.f2581b == null) {
            this.f2581b = (com.estrongs.android.ui.a.s) getExpandableListAdapter();
        }
        int firstVisiblePosition = getFirstVisiblePosition();
        int groupCount = this.f2581b.getGroupCount();
        for (int i = 0; i < groupCount; i++) {
            if (firstVisiblePosition <= getFlatListPosition(getPackedPositionForGroup(i))) {
                return i;
            }
        }
        return groupCount;
    }

    private SparseArray<View> e() {
        SparseArray<View> sparseArray = new SparseArray<>();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt != null) {
                long expandableListPosition = getExpandableListPosition(getPositionForView(childAt));
                if (getPackedPositionType(expandableListPosition) == 0) {
                    sparseArray.put(getPackedPositionGroup(expandableListPosition), childAt);
                }
            }
        }
        return sparseArray;
    }

    public void a() {
        if (this.f2580a == null) {
            return;
        }
        if (this.f2581b == null) {
            this.f2581b = (com.estrongs.android.ui.a.s) getExpandableListAdapter();
        }
        this.d = Math.max(0, this.c);
        this.f2580a = (LinearLayout) this.f2581b.getGroupView(this.d, isGroupExpanded(this.d), this.f2580a, null);
    }

    public void b() {
        Log.w("test", "checkStaticBoard!");
        if (this.f2580a == null) {
            return;
        }
        if (this.f2581b == null) {
            this.f2581b = (com.estrongs.android.ui.a.s) getExpandableListAdapter();
        }
        int d = d();
        Log.d("test", "firstVisible : " + d);
        if (d != 0) {
            int i = d - 1;
            View a2 = a(d);
            if (a2 != null && a2.getTop() <= 0) {
                i = d;
            }
            if (i != this.c) {
                this.c = i;
                a();
            }
        } else if (this.c != 0) {
            this.c = 0;
            a();
        }
        View a3 = a(d);
        if (a3 != null && a3.getTop() < 0 && d + 1 < this.f2581b.getGroupCount()) {
            a3 = a(d + 1);
        }
        int measuredHeight = this.f2580a.getMeasuredHeight();
        int measuredWidth = this.f2580a.getMeasuredWidth();
        int top = a3 == null ? measuredHeight : a3.getTop();
        int max = Math.max(0, top);
        if (top < 0) {
            Log.d("test", "switch 1: " + top + " , " + max);
            this.f2580a.layout(0, 0, measuredWidth, measuredHeight);
            if (this.e.getVisibility() == 0) {
                this.e.setVisibility(4);
                return;
            }
            return;
        }
        if (max < measuredHeight) {
            Log.d("test", "switch 2 : " + top + " , " + max);
            this.f2580a.layout(0, max - measuredHeight, measuredWidth, max);
            if (this.e.getVisibility() == 4) {
                this.e.setVisibility(0);
                return;
            }
            return;
        }
        if (max >= measuredHeight) {
            Log.d("test", "switch 3 : " + top + " , " + max);
            this.f2580a.layout(0, 0, measuredWidth, measuredHeight);
            if (this.e.getVisibility() == 0) {
                this.e.setVisibility(4);
            }
        }
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        c();
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        b();
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        Log.e("test", "onScrollStateChanged!");
        b();
    }
}
