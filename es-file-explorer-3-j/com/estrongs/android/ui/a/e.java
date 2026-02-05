package com.estrongs.android.ui.a;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
public class e extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    private Context f1578a;

    /* renamed from: b, reason: collision with root package name */
    private int f1579b = 8;
    private Drawable[] c = new Drawable[getCount()];
    private com.estrongs.android.ui.theme.al d;
    private int e;

    public e(Context context) {
        this.f1578a = context;
        this.d = com.estrongs.android.ui.theme.al.a(this.f1578a);
        this.c[0] = this.d.a(C0000R.drawable.toolbar_sort_name_ascending);
        this.c[1] = this.d.a(C0000R.drawable.toolbar_sort_type_ascending);
        this.c[2] = this.d.a(C0000R.drawable.toolbar_sort_size_ascending);
        this.c[3] = this.d.a(C0000R.drawable.toolbar_sort_time_ascending);
        this.c[4] = this.d.a(C0000R.drawable.toolbar_sort_name_descending);
        this.c[5] = this.d.a(C0000R.drawable.toolbar_sort_type_descending);
        this.c[6] = this.d.a(C0000R.drawable.toolbar_sort_size_descending);
        this.c[7] = this.d.a(C0000R.drawable.toolbar_sort_time_descending);
        com.estrongs.android.view.ar t = FileExplorerActivity.E() != null ? FileExplorerActivity.E().t() : null;
        if (t != null) {
            this.e = t.N() + (t.O() * 4);
        } else {
            this.e = -1;
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f1579b;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = com.estrongs.android.pop.esclasses.e.a(this.f1578a).inflate(C0000R.layout.item_context_menu, (ViewGroup) null);
        }
        ImageView imageView = (ImageView) view.findViewById(C0000R.id.icon);
        imageView.setImageDrawable(this.c[i]);
        imageView.setPadding(0, com.estrongs.android.ui.d.a.a(this.f1578a, 10.0f), 0, com.estrongs.android.ui.d.a.a(this.f1578a, 10.0f));
        ((TextView) view.findViewById(C0000R.id.label)).setVisibility(8);
        if (i == this.e) {
            view.setBackgroundResource(C0000R.drawable.popupbox_content_selected);
        } else {
            view.setBackgroundResource(C0000R.drawable.popupbox_listview_selector);
        }
        return view;
    }
}
