package com.estrongs.android.ui.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class cx extends ag {

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.android.ui.a.e f1718a;

    /* renamed from: b, reason: collision with root package name */
    private dc f1719b;
    private View c;
    private View d;
    private View e;
    private final int f;

    public cx(Context context) {
        super(context);
        this.f = 4;
        setTitle(C0000R.string.action_sort);
        a();
    }

    private void a(View view, int i) {
        b(view.findViewById(C0000R.id.grid1), i * 4);
        b(view.findViewById(C0000R.id.grid2), (i * 4) + 1);
        b(view.findViewById(C0000R.id.grid3), (i * 4) + 2);
        b(view.findViewById(C0000R.id.grid4), (i * 4) + 3);
    }

    private void b(View view, int i) {
        this.f1718a.getView(i, view, null).setOnClickListener(new cy(this, i));
    }

    protected void a() {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.mContext).inflate(C0000R.layout.dialog_grid_view, (ViewGroup) null);
        inflate.findViewById(C0000R.id.view).setVisibility(8);
        inflate.findViewById(C0000R.id.sort_divider).setVisibility(8);
        this.c = inflate.findViewById(C0000R.id.sort);
        this.d = this.c.findViewById(C0000R.id.row1);
        this.e = this.c.findViewById(C0000R.id.row2);
        this.f1718a = new com.estrongs.android.ui.a.e(this.mContext);
        a(this.d, 0);
        a(this.e, 1);
        setContentView(inflate);
    }

    public void a(dc dcVar) {
        this.f1719b = dcVar;
    }
}
