package com.estrongs.android.ui.e;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESScrollView;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class gu implements gp {

    /* renamed from: a, reason: collision with root package name */
    private Context f2174a;
    private int d;
    private View e;
    private com.estrongs.android.ui.theme.al g;
    private LinearLayout h;
    private int i;
    private ESScrollView j;
    private View k;
    private View l;

    /* renamed from: b, reason: collision with root package name */
    protected List<com.estrongs.android.view.a.a> f2175b = new LinkedList();
    private SparseArray<gy> f = new SparseArray<>();
    boolean c = false;
    private View.OnClickListener m = new gv(this);
    private View.OnLongClickListener n = new gw(this);

    public gu(Context context, int i) {
        this.f2174a = context;
        this.d = i;
        this.g = com.estrongs.android.ui.theme.al.a(this.f2174a);
        e();
    }

    private void a(com.estrongs.android.view.a.a aVar, gy gyVar, boolean z) {
        Button button;
        button = gyVar.c;
        Drawable icon = aVar.getIcon();
        if (icon == null) {
            icon = this.g.c(aVar.b());
            icon.mutate();
            aVar.setIcon(icon);
        }
        icon.clearColorFilter();
        button.setCompoundDrawables(icon, null, null, null);
        CharSequence title = aVar.getTitle();
        if (title == null) {
            button.setText(aVar.a());
        } else {
            button.setText(title);
        }
        gyVar.a();
        if (z) {
            gyVar.d();
        } else {
            gyVar.c();
        }
    }

    private void c(int i) {
        View view;
        if (this.i > i) {
            for (int i2 = i; i2 < this.i; i2++) {
                this.f.get(i2).b();
            }
        } else {
            for (int i3 = this.i; i3 < i; i3++) {
                gy gyVar = this.f.get(i3);
                if (gyVar == null) {
                    gy a2 = a(i3);
                    this.f.put(i3, a2);
                    LinearLayout linearLayout = this.h;
                    view = a2.f2180b;
                    linearLayout.addView(view, 0);
                } else {
                    gyVar.a();
                }
            }
        }
        this.i = i;
    }

    private void e() {
        this.e = com.estrongs.android.pop.esclasses.e.a(this.f2174a).inflate(C0000R.layout.single_column_menu, (ViewGroup) null);
        this.j = (ESScrollView) this.e.findViewById(C0000R.id.extra_edit_scroll);
        this.k = this.e.findViewById(C0000R.id.point_top);
        this.l = this.e.findViewById(C0000R.id.point_bottom);
        this.j.b();
        this.j.a(new gx(this));
        this.h = (LinearLayout) this.e.findViewById(C0000R.id.extra_edit_panel);
    }

    @Override // com.estrongs.android.ui.e.gp
    public View a() {
        return this.e;
    }

    protected gy a(int i) {
        View view;
        View view2;
        View view3;
        LinearLayout linearLayout = (LinearLayout) com.estrongs.android.pop.esclasses.e.a(this.f2174a).inflate(C0000R.layout.item_single_column_menu, (ViewGroup) null);
        Button button = (Button) linearLayout.findViewById(C0000R.id.button);
        View findViewById = linearLayout.findViewById(C0000R.id.divider);
        gy gyVar = new gy(this);
        gyVar.f2180b = linearLayout;
        gyVar.c = button;
        view = gyVar.f2180b;
        view.setTag(Integer.valueOf(i));
        view2 = gyVar.f2180b;
        view2.setOnClickListener(this.m);
        view3 = gyVar.f2180b;
        view3.setOnLongClickListener(this.n);
        gyVar.d = findViewById;
        return gyVar;
    }

    public abstract void a(int i, com.estrongs.android.view.a.a aVar);

    @Override // com.estrongs.android.ui.e.gp
    public void a(List<com.estrongs.android.view.a.a> list) {
        this.f2175b = list;
        int size = list.size();
        if (size != this.i) {
            c(size);
        }
        int i = 0;
        while (i < size) {
            a(this.f2175b.get(i), this.f.get(i), i == 0);
            i++;
        }
        b();
    }

    public com.estrongs.android.view.a.a b(int i) {
        try {
            return this.f2175b.get(i);
        } catch (Exception e) {
            return null;
        }
    }

    public void b() {
        this.h.setVisibility(0);
        ESScrollView.a(this.j, this.h);
        this.k.setVisibility(4);
        this.l.setVisibility(4);
        this.c = false;
    }

    public void c() {
        ESScrollView.a(this.j, this.h);
    }

    public void d() {
        if (this.h.getMeasuredHeight() - this.j.getHeight() > 0) {
            this.c = true;
        } else {
            this.c = false;
        }
        if (this.c) {
            this.k.setVisibility(0);
        }
    }
}
