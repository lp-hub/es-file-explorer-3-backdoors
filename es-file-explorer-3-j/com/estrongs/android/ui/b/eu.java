package com.estrongs.android.ui.b;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopPreferenceActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class eu extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    private Context f1799a;

    /* renamed from: b, reason: collision with root package name */
    private int f1800b = 8;
    private Drawable[] c = new Drawable[getCount()];
    private com.estrongs.android.ui.theme.al d;
    private int e;

    public eu(Context context) {
        this.f1799a = context;
        this.d = com.estrongs.android.ui.theme.al.a(this.f1799a);
        this.c[0] = this.d.a(C0000R.drawable.toolbar_sort_name_ascending);
        this.c[1] = this.d.a(C0000R.drawable.toolbar_sort_type_ascending);
        this.c[2] = this.d.a(C0000R.drawable.toolbar_sort_size_ascending);
        this.c[3] = this.d.a(C0000R.drawable.toolbar_sort_name_descending);
        this.c[4] = this.d.a(C0000R.drawable.toolbar_sort_type_descending);
        this.c[5] = this.d.a(C0000R.drawable.toolbar_sort_size_descending);
        a();
    }

    public void a() {
        int a2 = PopPreferenceActivity.a(this.f1799a);
        for (com.estrongs.android.util.p<Integer, Integer> pVar : ba.f1652a) {
            if (pVar.f2707b.intValue() == a2) {
                this.e = pVar.f2706a.intValue();
                return;
            }
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f1800b;
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
            view = com.estrongs.android.pop.esclasses.e.a(this.f1799a).inflate(C0000R.layout.item_context_menu, (ViewGroup) null);
        }
        ImageView imageView = (ImageView) view.findViewById(C0000R.id.icon);
        imageView.setImageDrawable(this.c[i]);
        imageView.setPadding(0, com.estrongs.android.ui.d.a.a(this.f1799a, 10.0f), 0, com.estrongs.android.ui.d.a.a(this.f1799a, 10.0f));
        ((TextView) view.findViewById(C0000R.id.label)).setVisibility(8);
        if (i == this.e) {
            view.setBackgroundResource(C0000R.drawable.popupbox_content_selected);
        } else {
            view.setBackgroundResource(C0000R.drawable.popupbox_listview_selector);
        }
        return view;
    }
}
