package com.estrongs.android.ui.g;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.utils.ca;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.dm;
import com.estrongs.android.ui.a.ce;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.ay;
import com.estrongs.android.view.ar;
import com.estrongs.android.widget.au;

/* loaded from: classes.dex */
public class a extends au {
    private static a g = null;
    private ce h;
    private al i;
    private LinearLayout j;
    private ListView k;

    public a(Context context, View view, String str, int i, Rect rect, boolean z) {
        super(context, view, str, i, rect, z);
    }

    public static a a(View view, String str, int i, Rect rect, boolean z) {
        if (g == null) {
            g = new a(view.getContext(), view, str, i, rect, z);
        }
        if (g.k() != i || view.getContext() != g.a()) {
            g.i();
            g = new a(view.getContext(), view, str, i, rect, z);
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

    public void a(dm dmVar) {
        try {
            this.h.a(dmVar);
        } catch (NullPointerException e) {
        }
    }

    @Override // com.estrongs.android.widget.au
    protected void b() {
        this.i = al.a(this.e);
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.e).inflate(ca.a(this.e) ? C0000R.layout.port_window_history : C0000R.layout.window_history, (ViewGroup) null);
        this.j = (LinearLayout) inflate.findViewById(C0000R.id.window_history_bottom_button);
        this.j.setFocusable(true);
        this.j.setOnClickListener(new b(this));
        this.k = (ListView) inflate.findViewById(C0000R.id.listview_history);
        this.h = new ce(this.e, true);
        this.k.setAdapter((ListAdapter) this.h);
        this.k.setOnItemClickListener(this.h);
        ((TextView) l().findViewById(C0000R.id.popup_title)).setText(C0000R.string.location_history);
        a(inflate, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.estrongs.android.widget.au
    public void c() {
        try {
            super.c();
            if (this.e instanceof FileExplorerActivity) {
                ar t = ((FileExplorerActivity) this.e).t();
                if (t != null) {
                    this.h.a(t.ak());
                    if (ak.aO(t.c())) {
                        this.h.a(true);
                    } else {
                        this.h.a(false);
                    }
                } else {
                    this.h.a((ay[]) null);
                }
            }
            this.h.notifyDataSetChanged();
            this.k.setSelection(0);
        } catch (NullPointerException e) {
        }
    }
}
