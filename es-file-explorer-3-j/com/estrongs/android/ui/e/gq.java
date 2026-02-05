package com.estrongs.android.ui.e;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class gq extends a {
    public gq(Context context, boolean z) {
        super(context, z);
    }

    public com.estrongs.android.view.a.a a(int i, int i2, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return a(this.f1968b.getResources().getString(i), i2, onMenuItemClickListener);
    }

    public com.estrongs.android.view.a.a a(String str, int i, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        Drawable drawable = null;
        if (i != -1) {
            drawable = this.f.a(i);
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
        com.estrongs.android.view.a.a aVar = new com.estrongs.android.view.a.a(drawable, str);
        aVar.setOnMenuItemClickListener(onMenuItemClickListener);
        a(aVar);
        return aVar;
    }

    public void a(int i, int i2, int i3) {
        a(i, this.f1968b.getResources().getString(i2), i3);
    }

    public void a(int i, String str, int i2) {
        a(a(i), str, i2);
    }

    protected void a(Button button, com.estrongs.android.view.a.a aVar, int i) {
        aVar.a((View) button.getParent());
        if (com.estrongs.android.pop.q.a(this.f1968b).as()) {
            button.setCompoundDrawables(null, aVar.getIcon(), null, null);
            button.setText(aVar.getTitle());
            button.setPadding(0, com.estrongs.android.ui.d.a.a(this.f1968b, 7.0f), 0, 0);
        } else {
            button.setCompoundDrawables(aVar.getIcon(), null, null, null);
            button.setText("");
            button.setPadding(0, 0, 0, 0);
        }
        button.setClickable(false);
        aVar.c(this.f.d(C0000R.color.toolbar_text));
        button.setTextColor(this.f.d(C0000R.color.toolbar_text));
        if (aVar.d() == null) {
            aVar.a(new gt(this));
        }
    }

    public void a(com.estrongs.android.view.a.a aVar) {
        LinearLayout.LayoutParams layoutParams;
        LinearLayout linearLayout = (LinearLayout) com.estrongs.android.pop.esclasses.e.a(this.f1968b).inflate(C0000R.layout.menu_item_bottom, (ViewGroup) null);
        Button button = (Button) linearLayout.findViewById(C0000R.id.button_menu_bottom);
        a(button, aVar, this.f1967a.size());
        this.f1967a.add(aVar);
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
        ((LinearLayout) this.c).addView(linearLayout, layoutParams);
        linearLayout.setOnClickListener(new gr(this, button, aVar));
        linearLayout.setOnLongClickListener(new gs(this, aVar));
        linearLayout.setFocusable(true);
    }

    protected void a(com.estrongs.android.view.a.a aVar, String str, int i) {
        aVar.setIcon(this.f.c(i));
        aVar.setTitle(str);
    }

    public void i() {
        int size = this.f1967a.size();
        for (int i = 0; i < size; i++) {
            com.estrongs.android.view.a.a aVar = this.f1967a.get(i);
            a((Button) aVar.g().findViewById(C0000R.id.button_menu_bottom), aVar, i);
        }
    }

    public void j() {
        this.f1967a.clear();
        ((LinearLayout) this.c).removeAllViews();
    }
}
