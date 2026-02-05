package com.estrongs.android.ui.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class d extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    private Context f1576a;

    /* renamed from: b, reason: collision with root package name */
    private String[] f1577b = {"Flickr", "Instagram", "Facebook"};
    private int[] c = {C0000R.drawable.app_pic_net_flickr, C0000R.drawable.app_pic_net_instagram, C0000R.drawable.app_pic_net_facebook};
    private String[] d = {"Flickr", "Instagram", "Facebook"};

    public d(Context context) {
        this.f1576a = context;
    }

    public String a(int i) {
        return this.f1577b[i];
    }

    public int b(int i) {
        return this.c[i];
    }

    public String c(int i) {
        return this.d[i];
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f1577b.length;
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
            view = com.estrongs.android.pop.esclasses.e.a(this.f1576a).inflate(C0000R.layout.grid_new_network, (ViewGroup) null);
        }
        ((ImageView) view.findViewById(C0000R.id.iv_item_new_network)).setImageResource(this.c[i]);
        ((TextView) view.findViewById(C0000R.id.tv_item_new_network)).setText(this.f1577b[i]);
        return view;
    }
}
