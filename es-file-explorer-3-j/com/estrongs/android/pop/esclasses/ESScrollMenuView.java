package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.e.fu;

/* loaded from: classes.dex */
public class ESScrollMenuView extends ESScrollView {

    /* renamed from: a, reason: collision with root package name */
    fu f1124a;
    private Context c;

    public ESScrollMenuView(Context context) {
        super(context);
        this.c = context;
    }

    public ESScrollMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = context;
    }

    public ESScrollMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = context;
    }

    public void a() {
        if (this.f1124a != null) {
            this.f1124a.j();
        }
        this.f1124a = null;
    }

    public void a(com.estrongs.android.view.a.a aVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        if (this.f1124a == null) {
            this.f1124a = new fu(this.c, true);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            View findViewById = findViewById(C0000R.id.extra_edit_panel);
            if (findViewById != null) {
                ((LinearLayout) findViewById).addView(this.f1124a.a(), layoutParams);
            } else {
                addView(this.f1124a.a(), layoutParams);
            }
        }
        this.f1124a.a(aVar.setOnMenuItemClickListener(onMenuItemClickListener), true);
    }
}
