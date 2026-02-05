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
public class f extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    private Context f1580a;

    /* renamed from: b, reason: collision with root package name */
    private int f1581b = 9;
    private Drawable[] c = new Drawable[getCount()];
    private String[] d;
    private com.estrongs.android.ui.theme.al e;
    private int f;

    public f(Context context) {
        this.f = 0;
        this.f1580a = context;
        this.e = com.estrongs.android.ui.theme.al.a(this.f1580a);
        this.c[0] = this.e.a(C0000R.drawable.toolbar_view_icon_l);
        this.c[1] = this.e.a(C0000R.drawable.toolbar_view_icon_m_);
        this.c[2] = this.e.a(C0000R.drawable.toolbar_view_icon_s);
        this.c[3] = this.e.a(C0000R.drawable.toolbar_view_list_l);
        this.c[4] = this.e.a(C0000R.drawable.toolbar_view_list_m);
        this.c[5] = this.e.a(C0000R.drawable.toolbar_view_list_s);
        this.c[6] = this.e.a(C0000R.drawable.toolbar_view_detail_l);
        this.c[7] = this.e.a(C0000R.drawable.toolbar_view_detail_m);
        this.c[8] = this.e.a(C0000R.drawable.toolbar_view_detail_s);
        this.d = this.f1580a.getResources().getStringArray(C0000R.array.view_item_names);
        com.estrongs.android.view.ar t = FileExplorerActivity.E() != null ? FileExplorerActivity.E().t() : null;
        if (t != null) {
            this.f = t.C();
        } else {
            this.f = -1;
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f1581b;
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
            view = com.estrongs.android.pop.esclasses.e.a(this.f1580a).inflate(C0000R.layout.item_context_menu, (ViewGroup) null);
        }
        ImageView imageView = (ImageView) view.findViewById(C0000R.id.icon);
        imageView.setImageDrawable(this.c[i]);
        imageView.setPadding(0, com.estrongs.android.ui.d.a.a(this.f1580a, 6.0f), 0, com.estrongs.android.ui.d.a.a(this.f1580a, 6.0f));
        ((TextView) view.findViewById(C0000R.id.label)).setText(this.d[i]);
        if (i == this.f) {
            view.setBackgroundResource(C0000R.drawable.popupbox_content_selected);
        } else {
            view.setBackgroundResource(C0000R.drawable.popupbox_listview_selector);
        }
        return view;
    }
}
