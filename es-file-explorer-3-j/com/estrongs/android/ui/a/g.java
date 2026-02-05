package com.estrongs.android.ui.a;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.widget.UsageImageView;
import java.util.List;

/* loaded from: classes.dex */
public class g extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    private Context f1582a;

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.android.pop.app.diskusage.b f1583b;
    private List<Integer> c = null;
    private boolean d = false;
    private com.estrongs.android.ui.theme.al e;

    public g(Context context, com.estrongs.android.pop.app.diskusage.b bVar) {
        this.f1582a = context;
        this.f1583b = bVar;
        this.e = com.estrongs.android.ui.theme.al.a(this.f1582a);
    }

    public void a(com.estrongs.android.pop.app.diskusage.b bVar) {
        this.f1583b = bVar;
    }

    public void a(List<Integer> list) {
        this.c = list;
    }

    public void a(boolean z) {
        this.d = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.f1583b != null) {
            return this.f1583b.b();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (this.f1583b != null) {
            return this.f1583b.c(i);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        h hVar;
        if (view == null) {
            view = com.estrongs.android.pop.esclasses.e.a(this.f1582a).inflate(C0000R.layout.item_listview_diskusage, (ViewGroup) null);
        }
        h hVar2 = (h) view.getTag();
        if (hVar2 == null) {
            hVar = new h(this);
            hVar.f1584a = (ImageView) view.findViewById(C0000R.id.icon_item_listview_diskusage);
            hVar.f1585b = (UsageImageView) view.findViewById(C0000R.id.usage_item_listview_diskusage);
            hVar.c = (TextView) view.findViewById(C0000R.id.label_item_listview_diskusage);
            hVar.c.setTextColor(this.e.h());
            hVar.d = (TextView) view.findViewById(C0000R.id.size_item_listview_diskusage);
            hVar.d.setTextColor(this.e.h());
            hVar.e = (TextView) view.findViewById(C0000R.id.rate_item_listview_diskusage);
            hVar.e.setTextColor(this.e.h());
            hVar.f = (TextView) view.findViewById(C0000R.id.num_item_listview_diskusage);
            hVar.f.setTextColor(this.e.h());
            hVar.g = (CheckBox) view.findViewById(C0000R.id.checkbox);
            view.setTag(hVar);
        } else {
            hVar = hVar2;
        }
        if (this.f1583b != null) {
            this.f1583b.b(i);
            hVar.f1584a.setImageDrawable((Drawable) this.f1583b.a(com.estrongs.android.pop.app.diskusage.b.f664a));
            hVar.f1585b.a(((Float) this.f1583b.a(com.estrongs.android.pop.app.diskusage.b.g)).floatValue());
            hVar.c.setText(this.f1583b.a(com.estrongs.android.pop.app.diskusage.b.f665b).toString());
            hVar.d.setText(this.f1583b.a(com.estrongs.android.pop.app.diskusage.b.c).toString());
            hVar.e.setText(this.f1583b.a(com.estrongs.android.pop.app.diskusage.b.f).toString());
            hVar.f.setText(this.f1583b.a(com.estrongs.android.pop.app.diskusage.b.e).toString());
        }
        int paddingLeft = view.getPaddingLeft();
        int paddingRight = view.getPaddingRight();
        int paddingTop = view.getPaddingTop();
        int paddingBottom = view.getPaddingBottom();
        if (this.d) {
            hVar.g.setVisibility(0);
            if (this.c != null) {
                boolean contains = this.c.contains(Integer.valueOf(i));
                hVar.g.setChecked(contains);
                if (contains) {
                    view.setBackgroundResource(C0000R.drawable.main_content_icon_bg_click);
                } else {
                    view.setBackgroundDrawable(null);
                }
            }
        } else {
            hVar.g.setVisibility(8);
            view.setBackgroundDrawable(null);
        }
        view.setPadding(paddingLeft, paddingTop, paddingRight, paddingBottom);
        return view;
    }
}
