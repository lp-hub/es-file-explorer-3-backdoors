package com.estrongs.android.ui.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class b extends BaseAdapter {

    /* renamed from: b, reason: collision with root package name */
    private Context f1515b;
    private String[] c;

    /* renamed from: a, reason: collision with root package name */
    private List<c> f1514a = new ArrayList();
    private final int d = 4;

    public b(Context context) {
        this.f1515b = context;
        this.c = this.f1515b.getResources().getStringArray(C0000R.array.netdisk_names);
        this.f1514a.add(new c(this, this.c[0], C0000R.drawable.networkdisk_box, "box"));
        this.f1514a.add(new c(this, this.c[1], C0000R.drawable.networkdisk_sugarsync, "sugarsync"));
        this.f1514a.add(new c(this, this.c[2], C0000R.drawable.networkdisk_dropbox, "dropbox"));
        this.f1514a.add(new c(this, this.c[3], C0000R.drawable.networkdisk_skydrive, "skydrive"));
        this.f1514a.add(new c(this, this.c[4], C0000R.drawable.networkdisk_gdrive, "gdrive"));
        this.f1514a.add(new c(this, this.c[5], C0000R.drawable.networkdisk_s3, "s3"));
        this.f1514a.add(new c(this, this.c[6], C0000R.drawable.networkdisk_yandex, "yandex"));
        this.f1514a.add(new c(this, this.c[7], C0000R.drawable.networkdisk_ubuntu, "ubuntu"));
        this.f1514a.add(new c(this, this.c[8], C0000R.drawable.networkdisk_kuaipan, "kuaipan"));
        this.f1514a.add(new c(this, this.c[9], C0000R.drawable.networkdisk_kanbox, "kanbox"));
        this.f1514a.add(new c(this, this.c[10], C0000R.drawable.networkdisk_vdisk, "vdisk"));
        this.f1514a.add(new c(this, this.c[11], C0000R.drawable.networkdisk_baidu, "baidu"));
        String b2 = com.estrongs.android.pop.utils.bs.b();
        if (com.estrongs.android.ui.pcs.cl.a(this.f1515b)) {
            return;
        }
        if ("TW".equalsIgnoreCase(b2) || "HK".equalsIgnoreCase(b2)) {
            a("baidu");
            return;
        }
        a("baidu");
        a("vdisk");
        a("kanbox");
        a("kuaipan");
    }

    private void a(String str) {
        String str2;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f1514a.size()) {
                return;
            }
            str2 = this.f1514a.get(i2).d;
            if (str2.equals(str)) {
                this.f1514a.remove(i2);
                return;
            }
            i = i2 + 1;
        }
    }

    public String a(int i) {
        String str;
        str = this.f1514a.get(i).f1545b;
        return str;
    }

    public int b(int i) {
        int i2;
        i2 = this.f1514a.get(i).c;
        return i2;
    }

    public String c(int i) {
        String str;
        str = this.f1514a.get(i).d;
        return str;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f1514a.size();
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
            view = com.estrongs.android.pop.esclasses.e.a(this.f1515b).inflate(C0000R.layout.grid_new_network, (ViewGroup) null);
        }
        ((ImageView) view.findViewById(C0000R.id.iv_item_new_network)).setImageResource(b(i));
        TextView textView = (TextView) view.findViewById(C0000R.id.tv_item_new_network);
        textView.setTextColor(com.estrongs.android.ui.theme.al.a(this.f1515b).d(C0000R.color.popupbox_content_text));
        textView.setText(this.c[i]);
        return view;
    }
}
