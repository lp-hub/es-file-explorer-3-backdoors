package com.estrongs.android.ui.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.estrongs.android.pop.C0000R;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class ba extends ag {

    /* renamed from: a, reason: collision with root package name */
    static List<com.estrongs.android.util.p<Integer, Integer>> f1652a = new LinkedList();

    /* renamed from: b, reason: collision with root package name */
    private eu f1653b;
    private bc c;
    private View d;
    private View e;
    private View f;
    private final int g;

    static {
        f1652a.add(new com.estrongs.android.util.p<>(0, 0));
        f1652a.add(new com.estrongs.android.util.p<>(1, 2));
        f1652a.add(new com.estrongs.android.util.p<>(2, 4));
        f1652a.add(new com.estrongs.android.util.p<>(3, 1));
        f1652a.add(new com.estrongs.android.util.p<>(4, 3));
        f1652a.add(new com.estrongs.android.util.p<>(5, 5));
    }

    public ba(Context context) {
        super(context);
        this.g = 3;
        setTitle(C0000R.string.action_sort);
        a();
    }

    private void a(View view, int i) {
        b(view.findViewById(C0000R.id.grid1), i * 3);
        b(view.findViewById(C0000R.id.grid2), (i * 3) + 1);
        b(view.findViewById(C0000R.id.grid3), (i * 3) + 2);
    }

    private void b(View view, int i) {
        this.f1653b.getView(i, view, null).setOnClickListener(new bb(this, i));
    }

    protected void a() {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.mContext).inflate(C0000R.layout.dialog_grid_view, (ViewGroup) null);
        inflate.findViewById(C0000R.id.view).setVisibility(8);
        inflate.findViewById(C0000R.id.sort_divider).setVisibility(8);
        this.d = inflate.findViewById(C0000R.id.sort);
        this.d.findViewById(C0000R.id.sort_title_panel).findViewById(C0000R.id.grid4).setVisibility(8);
        this.d.findViewById(C0000R.id.row1).findViewById(C0000R.id.grid4).setVisibility(8);
        this.d.findViewById(C0000R.id.row2).findViewById(C0000R.id.grid4).setVisibility(8);
        this.e = this.d.findViewById(C0000R.id.row1);
        this.f = this.d.findViewById(C0000R.id.row2);
        this.f1653b = new eu(this.mContext);
        a(this.e, 0);
        a(this.f, 1);
        setContentView(inflate);
    }

    public void a(bc bcVar) {
        this.c = bcVar;
    }
}
