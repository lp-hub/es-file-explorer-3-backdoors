package com.estrongs.android.ui.e;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class bv implements gp {

    /* renamed from: b, reason: collision with root package name */
    private Context f2022b;
    private int c;
    private int d;
    private View e;
    private LinearLayout f;
    private LinearLayout g;
    private com.estrongs.android.ui.theme.al i;

    /* renamed from: a, reason: collision with root package name */
    protected List<com.estrongs.android.view.a.a> f2021a = new LinkedList();
    private SparseArray<by> h = new SparseArray<>();
    private View.OnClickListener j = new bw(this);
    private View.OnLongClickListener k = new bx(this);

    public bv(Context context, int i) {
        this.f2022b = context;
        this.c = i;
        this.i = com.estrongs.android.ui.theme.al.a(this.f2022b);
        b();
    }

    private void a(com.estrongs.android.view.a.a aVar, by byVar, boolean z) {
        Button button;
        button = byVar.c;
        Drawable icon = aVar.getIcon();
        if (icon == null) {
            icon = this.i.c(aVar.b());
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
        byVar.b();
        if (z) {
            byVar.e();
        } else {
            byVar.d();
        }
    }

    private void b() {
        this.e = com.estrongs.android.pop.esclasses.e.a(this.f2022b).inflate(C0000R.layout.double_column_menu, (ViewGroup) null);
        this.f = (LinearLayout) this.e.findViewById(C0000R.id.left);
        this.g = (LinearLayout) this.e.findViewById(C0000R.id.right);
    }

    private void c(int i) {
        View view;
        View view2;
        if (i > this.d) {
            int i2 = this.d * 2;
            while (true) {
                int i3 = i2;
                if (i3 >= i * 2) {
                    break;
                }
                by byVar = this.h.get(i3);
                if (byVar == null) {
                    byVar = a(i3);
                    this.h.put(i3, byVar);
                    if (i3 % 2 == 0) {
                        LinearLayout linearLayout = this.f;
                        view2 = byVar.f2026b;
                        linearLayout.addView(view2);
                    } else {
                        LinearLayout linearLayout2 = this.g;
                        view = byVar.f2026b;
                        linearLayout2.addView(view);
                    }
                }
                byVar.a();
                i2 = i3 + 1;
            }
        } else if (i < this.d) {
            int i4 = i * 2;
            while (true) {
                int i5 = i4;
                if (i5 >= this.d * 2) {
                    break;
                }
                this.h.get(i5).c();
                i4 = i5 + 1;
            }
        }
        this.d = i;
    }

    @Override // com.estrongs.android.ui.e.gp
    public View a() {
        return this.e;
    }

    protected by a(int i) {
        Button button;
        Button button2;
        Button button3;
        LinearLayout linearLayout = (LinearLayout) com.estrongs.android.pop.esclasses.e.a(this.f2022b).inflate(C0000R.layout.item_double_column_menu, (ViewGroup) null);
        Button button4 = (Button) linearLayout.findViewById(C0000R.id.button);
        View findViewById = linearLayout.findViewById(C0000R.id.divider);
        by byVar = new by(this);
        byVar.f2026b = linearLayout;
        byVar.c = button4;
        button = byVar.c;
        button.setTag(Integer.valueOf(i));
        button2 = byVar.c;
        button2.setOnClickListener(this.j);
        button3 = byVar.c;
        button3.setOnLongClickListener(this.k);
        byVar.d = findViewById;
        return byVar;
    }

    public abstract void a(int i, com.estrongs.android.view.a.a aVar);

    @Override // com.estrongs.android.ui.e.gp
    public void a(List<com.estrongs.android.view.a.a> list) {
        by byVar;
        this.f2021a = list;
        int size = list.size();
        int i = (size + 1) / 2;
        if (i != this.d) {
            c(i);
        }
        for (int i2 = 0; i2 < size; i2++) {
            a(list.get(i2), this.h.get(i2), (i2 / 2) + 1 == this.d);
        }
        if (size % 2 != 1 || (byVar = this.h.get(size)) == null) {
            return;
        }
        byVar.a();
    }

    public com.estrongs.android.view.a.a b(int i) {
        try {
            return this.f2021a.get(i);
        } catch (Exception e) {
            return null;
        }
    }
}
