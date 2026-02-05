package com.estrongs.android.ui.e;

import android.content.Context;
import android.graphics.LightingColorFilter;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class c extends a {
    protected String[] g;
    protected final int h;
    protected final String i;
    private SparseArray<i> j;
    private int k;
    private boolean l;
    private com.estrongs.android.view.a.a m;
    private com.estrongs.android.view.a.a n;
    private gi o;
    private View.OnClickListener p;
    private View.OnLongClickListener q;

    public c(Context context, boolean z) {
        super(context, z);
        this.j = new SparseArray<>();
        this.k = 0;
        this.h = 5;
        this.i = "extra";
        this.l = false;
        this.m = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_menu_collapse, C0000R.string.edit_button_more).setOnMenuItemClickListener(new d(this));
        this.n = new com.estrongs.android.view.a.a(C0000R.drawable.toolbar_menu_expand, C0000R.string.edit_button_more).setOnMenuItemClickListener(new e(this));
        this.p = new f(this);
        this.q = new g(this);
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        if (this.l) {
            i iVar = this.j.get(4);
            if (z) {
                a(iVar, this.n, 4);
                this.f1967a.set(4, this.n);
            } else {
                a(iVar, this.m, 4);
                this.f1967a.set(4, this.m);
            }
        }
    }

    private void d(int i) {
        if (i > 5) {
            throw new IllegalStateException("Can't show more than 5 items in the bottom toolbar!");
        }
        if (this.k > i) {
            for (int i2 = i; i2 < this.k; i2++) {
                this.j.get(i2).b();
            }
        } else {
            for (int i3 = this.k; i3 < i; i3++) {
                i iVar = this.j.get(i3);
                if (iVar == null) {
                    this.j.put(i3, b(i3));
                } else {
                    iVar.a();
                }
            }
        }
        this.k = i;
    }

    private void k() {
        this.f1967a.clear();
        Map<String, com.estrongs.android.view.a.a> i = i();
        if (i == null || i.isEmpty()) {
            throw new IllegalStateException("MenuItemMap is not inited correctly!");
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.g.length) {
                if (this.l) {
                    this.f1967a.add(4, this.m);
                    return;
                }
                return;
            } else {
                String str = this.g[i3];
                com.estrongs.android.view.a.a aVar = str.equals("extra") ? this.m : i.get(str);
                if (aVar == null) {
                    throw new IllegalStateException("Can't find toolbar item : " + str);
                }
                this.f1967a.add(aVar);
                i2 = i3 + 1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        this.o = new h(this, this.f1968b, this.d);
    }

    protected void a(i iVar, com.estrongs.android.view.a.a aVar, int i) {
        Button button = iVar.f2183b;
        Drawable icon = aVar.getIcon();
        if (icon == null) {
            icon = c(aVar.b());
            icon.mutate();
            aVar.setIcon(icon);
        }
        icon.clearColorFilter();
        if (com.estrongs.android.pop.q.a(this.f1968b).as()) {
            button.setPadding(0, com.estrongs.android.ui.d.a.a(this.f1968b, 7.0f), 0, 0);
            button.setCompoundDrawables(null, icon, null, null);
            CharSequence title = aVar.getTitle();
            if (title == null) {
                button.setText(aVar.a());
            } else {
                button.setText(title);
            }
        } else {
            button.setPadding(0, 0, 0, 0);
            button.setCompoundDrawables(icon, null, null, null);
            button.setText("");
        }
        aVar.c(this.f.d(C0000R.color.toolbar_text));
        button.setTextColor(this.f.d(C0000R.color.toolbar_text));
        iVar.a(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String[] strArr) {
        int i = 5;
        if (strArr == null) {
            throw new NullPointerException("MenuSet has not inited!");
        }
        this.g = strArr;
        int length = this.g.length;
        if (length > 5) {
            this.l = true;
        } else {
            this.l = false;
            i = length;
        }
        if (this.k != i) {
            d(i);
        }
        k();
        for (int i2 = 0; i2 < this.k; i2++) {
            a(this.j.get(i2), a(i2), i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String[] a(String[] strArr, String str) {
        int i;
        int i2 = 0;
        while (true) {
            if (i2 >= strArr.length) {
                i = -1;
                break;
            }
            if (strArr[i2].equals(str)) {
                i = i2;
                break;
            }
            i2++;
        }
        if (i == -1) {
            return strArr;
        }
        String[] strArr2 = new String[strArr.length - 1];
        int i3 = 0;
        for (int i4 = 0; i4 < strArr.length; i4++) {
            if (i4 != i) {
                strArr2[i3] = strArr[i4];
                i3++;
            }
        }
        return strArr2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String[] a(String[] strArr, String str, int i) {
        int i2 = 0;
        if (i > strArr.length) {
            throw new IllegalStateException("Error occured when making a new MenuSet. Illegal index!");
        }
        int length = strArr.length + 1;
        String[] strArr2 = new String[length];
        if (i < 0) {
            i = length - 1;
        }
        for (int i3 = 0; i3 < length; i3++) {
            if (i3 == i) {
                strArr2[i3] = str;
            } else {
                strArr2[i3] = strArr[i2];
                i2++;
            }
        }
        return strArr2;
    }

    protected i b(int i) {
        LinearLayout.LayoutParams layoutParams;
        LinearLayout linearLayout = (LinearLayout) com.estrongs.android.pop.esclasses.e.a(this.f1968b).inflate(C0000R.layout.menu_item_bottom, (ViewGroup) null);
        Button button = (Button) linearLayout.findViewById(C0000R.id.button_menu_bottom);
        button.setClickable(false);
        int dimension = (int) this.f1968b.getResources().getDimension(C0000R.dimen.bottom_menu_basic_height);
        if (this.d) {
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(0, dimension);
            button.setSingleLine();
            layoutParams = layoutParams2;
        } else {
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(dimension, 0);
            button.setMaxLines(2);
            button.setLines(2);
            layoutParams = layoutParams3;
        }
        layoutParams.weight = 1.0f;
        ((LinearLayout) this.c).addView(linearLayout, i, layoutParams);
        i iVar = new i(this);
        iVar.f2182a = linearLayout;
        iVar.f2183b = button;
        iVar.f2182a.setTag(Integer.valueOf(i));
        iVar.f2182a.setOnClickListener(this.p);
        iVar.f2182a.setOnLongClickListener(this.q);
        iVar.f2182a.setFocusable(true);
        return iVar;
    }

    public void b(String... strArr) {
        for (String str : strArr) {
            int i = 0;
            while (true) {
                if (i >= this.g.length) {
                    i = -1;
                    break;
                } else if (this.g[i].equals(str)) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                if (!"extra".equals(str)) {
                    throw new IllegalStateException("Only menuItems that are shown can be disabled : " + str);
                }
                i = 4;
            }
            if (!this.l || i != 4 || "extra".equals(str)) {
                i iVar = this.j.get(i);
                iVar.a(false);
                iVar.f2183b.setTextColor(-7829368);
                LightingColorFilter lightingColorFilter = new LightingColorFilter(1, -7829368);
                Drawable[] compoundDrawables = iVar.f2183b.getCompoundDrawables();
                for (Drawable drawable : compoundDrawables) {
                    if (drawable != null) {
                        drawable.setColorFilter(lightingColorFilter);
                    }
                }
            }
        }
    }

    protected Drawable c(int i) {
        return this.f.c(i);
    }

    @Override // com.estrongs.android.ui.e.a
    public boolean e() {
        return super.e();
    }

    @Override // com.estrongs.android.ui.e.a
    public boolean f() {
        if (!this.l) {
            return super.f();
        }
        this.m.f();
        return true;
    }

    @Override // com.estrongs.android.ui.e.a
    public void g() {
        super.g();
        if (this.l && this.o != null && this.o.c()) {
            this.o.d();
        }
    }

    protected abstract void h();

    protected abstract Map<String, com.estrongs.android.view.a.a> i();

    public void j() {
        if (this.l) {
            if (this.o != null && this.o.c()) {
                this.o.d();
            }
            b(false);
        }
    }
}
