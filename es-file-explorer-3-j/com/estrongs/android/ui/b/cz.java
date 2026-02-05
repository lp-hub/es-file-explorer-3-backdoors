package com.estrongs.android.ui.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class cz extends ag {

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.android.ui.a.f f1722a;

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.android.ui.a.e f1723b;
    private dd c;
    private dc d;
    private View e;
    private View f;
    private View g;
    private View h;
    private final int i;
    private View j;
    private View k;
    private View l;
    private final int m;

    public cz(Context context) {
        super(context);
        this.i = 3;
        this.m = 4;
        setTitle(C0000R.string.action_view);
        a();
    }

    private void a(View view, int i) {
        b(view.findViewById(C0000R.id.grid1), i * 3);
        b(view.findViewById(C0000R.id.grid2), (i * 3) + 1);
        b(view.findViewById(C0000R.id.grid3), (i * 3) + 2);
    }

    private void b(View view, int i) {
        this.f1722a.getView(i, view, null).setOnClickListener(new da(this, i));
    }

    private void c(View view, int i) {
        d(view.findViewById(C0000R.id.grid1), i * 4);
        d(view.findViewById(C0000R.id.grid2), (i * 4) + 1);
        d(view.findViewById(C0000R.id.grid3), (i * 4) + 2);
        d(view.findViewById(C0000R.id.grid4), (i * 4) + 3);
    }

    private void d(View view, int i) {
        this.f1723b.getView(i, view, null).setOnClickListener(new db(this, i));
    }

    protected void a() {
        ScrollView scrollView = (ScrollView) com.estrongs.android.pop.esclasses.e.a(this.mContext).inflate(C0000R.layout.dialog_grid_view, (ViewGroup) null);
        this.e = scrollView.findViewById(C0000R.id.view);
        this.f = this.e.findViewById(C0000R.id.row1);
        this.g = this.e.findViewById(C0000R.id.row2);
        this.h = this.e.findViewById(C0000R.id.row3);
        this.f1722a = new com.estrongs.android.ui.a.f(this.mContext);
        a(this.f, 0);
        a(this.g, 1);
        a(this.h, 2);
        this.j = scrollView.findViewById(C0000R.id.sort);
        this.k = this.j.findViewById(C0000R.id.row1);
        this.l = this.j.findViewById(C0000R.id.row2);
        this.f1723b = new com.estrongs.android.ui.a.e(this.mContext);
        c(this.k, 0);
        c(this.l, 1);
        setContentView(scrollView);
        scrollView.setScrollbarFadingEnabled(false);
        if (!com.estrongs.android.pop.q.a(this.mContext).ak() && !com.estrongs.android.pop.q.a(this.mContext).am()) {
            this.j.setVisibility(8);
            scrollView.findViewById(C0000R.id.sort_divider).setVisibility(8);
        }
    }

    public void a(dc dcVar) {
        this.d = dcVar;
    }

    public void a(dd ddVar) {
        this.c = ddVar;
    }
}
