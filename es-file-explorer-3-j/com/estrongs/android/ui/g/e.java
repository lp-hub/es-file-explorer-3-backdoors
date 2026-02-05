package com.estrongs.android.ui.g;

import android.R;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.eh;
import com.estrongs.android.ui.a.ch;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.widget.au;

/* loaded from: classes.dex */
public class e extends au {
    private static e g = null;
    private ch h;
    private al i;
    private ListView j;

    public e(Context context, View view, String str, int i, Rect rect, boolean z) {
        super(context, view, str, i, rect, z);
    }

    public static e a(View view, String str, int i, Rect rect, boolean z) {
        if (g == null) {
            g = new e(view.getContext(), view, str, i, rect, z);
        }
        if (g.k() != i || view.getContext() != g.a()) {
            g.i();
            g = new e(view.getContext(), view, str, i, rect, z);
        }
        return g;
    }

    public static void d() {
        if (g != null) {
            g.i();
        }
        g = null;
    }

    public Context a() {
        return this.e;
    }

    public void a(eh ehVar) {
        try {
            this.h.a(ehVar);
        } catch (NullPointerException e) {
        }
    }

    @Override // com.estrongs.android.widget.au
    protected void b() {
        this.i = al.a(this.e);
        this.j = new ListView(this.e);
        this.j.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        this.j.setDivider(this.i.a(C0000R.drawable.toolbar_search_sp));
        this.j.setCacheColorHint(this.i.d(R.color.transparent));
        this.j.setSelector(this.i.a(C0000R.drawable.popupbox_content_bg, C0000R.drawable.listview_background_blue));
        this.h = new ch(this.e, true);
        this.j.setAdapter((ListAdapter) this.h);
        this.j.setOnItemClickListener(this.h);
        this.j.setPadding(0, 0, 0, 16);
        a(this.j, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.estrongs.android.widget.au
    public void c() {
        try {
            super.c();
            this.h.notifyDataSetChanged();
            this.j.setSelection(0);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
