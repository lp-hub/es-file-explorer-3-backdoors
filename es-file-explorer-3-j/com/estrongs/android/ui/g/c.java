package com.estrongs.android.ui.g;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.dm;
import com.estrongs.android.ui.a.ce;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.ay;
import com.estrongs.android.view.ar;
import com.estrongs.android.widget.au;

/* loaded from: classes.dex */
public class c extends au {
    private static c g = null;
    private al h;
    private View i;
    private ce j;
    private ListView k;

    public c(Context context, View view, String str, int i, Rect rect, boolean z) {
        super(context, view, str, i, rect, z);
    }

    public static c a(View view, String str, int i, Rect rect, boolean z) {
        if (g == null) {
            g = new c(view.getContext(), view, str, i, rect, z);
        }
        if (g.k() != i || view.getContext() != g.a()) {
            g.i();
            g = new c(view.getContext(), view, str, i, rect, z);
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
            this.j.a(dmVar);
        } catch (NullPointerException e) {
        }
    }

    @Override // com.estrongs.android.widget.au
    protected void b() {
        this.h = al.a(this.e);
        this.i = com.estrongs.android.pop.esclasses.e.a(this.e).inflate(C0000R.layout.window_history, (ViewGroup) null);
        this.k = (ListView) this.i.findViewById(C0000R.id.listview_history);
        this.j = new ce(this.e, true);
        this.k.setAdapter((ListAdapter) this.j);
        this.k.setOnItemClickListener(this.j);
        LinearLayout linearLayout = (LinearLayout) this.i.findViewById(C0000R.id.history_clear);
        linearLayout.setFocusable(true);
        ((ImageView) this.i.findViewById(C0000R.id.history_image_clear)).setClickable(false);
        linearLayout.setOnClickListener(new d(this));
        a(this.i, new FrameLayout.LayoutParams(-1, -1));
    }

    @Override // com.estrongs.android.widget.au
    public void c() {
        try {
            super.c();
            if (this.e instanceof FileExplorerActivity) {
                ar t = ((FileExplorerActivity) this.e).t();
                if (t != null) {
                    this.j.a(t.ak());
                    if (ak.aO(t.c())) {
                        this.j.a(true);
                    } else {
                        this.j.a(false);
                    }
                } else {
                    this.j.a((ay[]) null);
                }
            }
            this.j.notifyDataSetChanged();
            this.k.setSelection(0);
        } catch (NullPointerException e) {
        }
    }
}
