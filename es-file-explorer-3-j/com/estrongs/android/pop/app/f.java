package com.estrongs.android.pop.app;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class f extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppCheckUpdateList f793a;

    /* renamed from: b, reason: collision with root package name */
    private LayoutInflater f794b;
    private ArrayList<String> c;
    private PackageManager d;

    public f(AppCheckUpdateList appCheckUpdateList, Context context, ArrayList<String> arrayList) {
        this.f793a = appCheckUpdateList;
        this.f794b = com.estrongs.android.pop.esclasses.e.a(context);
        this.c = arrayList;
        this.d = context.getPackageManager();
    }

    public ArrayList<String> a() {
        return this.c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.c.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.c.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        h hVar;
        HashMap hashMap;
        c cVar = null;
        if (view == null) {
            view = this.f794b.inflate(C0000R.layout.app_select_list_item, (ViewGroup) null);
            h hVar2 = new h(cVar);
            hVar2.f862a = (ImageView) view.findViewById(C0000R.id.icon);
            hVar2.f863b = (TextView) view.findViewById(C0000R.id.pkgname);
            hVar2.c = (ImageView) view.findViewById(C0000R.id.taskman_list_item_button);
            hVar2.c.setImageDrawable(this.f793a.getResources().getDrawable(C0000R.drawable.setting_close));
            view.setTag(hVar2);
            hVar = hVar2;
        } else {
            hVar = (h) view.getTag();
        }
        String str = this.c.get(i);
        try {
            hVar.c.setOnClickListener(new g(this, str));
            hashMap = this.f793a.e;
            Drawable drawable = (Drawable) hashMap.get(str);
            if (drawable == null) {
                drawable = this.d.getApplicationIcon(str);
            }
            hVar.f862a.setImageDrawable(drawable);
            hVar.f863b.setText(this.d.getApplicationLabel(this.d.getApplicationInfo(str, 0)));
        } catch (PackageManager.NameNotFoundException e) {
        }
        return view;
    }
}
