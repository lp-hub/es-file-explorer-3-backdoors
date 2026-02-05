package com.estrongs.android.ui.b;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    List<ApplicationInfo> f1860a;

    /* renamed from: b, reason: collision with root package name */
    boolean f1861b;
    final /* synthetic */ f c;

    public i(f fVar, boolean z) {
        this.c = fVar;
        this.f1861b = false;
        this.f1861b = z;
    }

    public void a(List<ApplicationInfo> list) {
        this.f1860a = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.f1860a != null) {
            return this.f1860a.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f1860a.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        k kVar;
        HashMap hashMap;
        HashMap hashMap2;
        if (view == null) {
            view = com.estrongs.android.pop.esclasses.e.a(this.c.mContext).inflate(C0000R.layout.app_select_list_item, (ViewGroup) null);
            k kVar2 = new k(null);
            kVar2.f1864a = (ImageView) view.findViewById(C0000R.id.icon);
            kVar2.f1865b = (TextView) view.findViewById(C0000R.id.pkgname);
            kVar2.f1865b.setTextColor(com.estrongs.android.ui.theme.al.a(this.c.mContext).d(C0000R.color.popupbox_content_text));
            kVar2.c = (ImageView) view.findViewById(C0000R.id.taskman_list_item_button);
            kVar2.c.setImageDrawable(this.c.mContext.getResources().getDrawable(C0000R.drawable.setting_new));
            view.setTag(kVar2);
            kVar = kVar2;
        } else {
            kVar = (k) view.getTag();
        }
        ApplicationInfo applicationInfo = this.f1860a.get(i);
        hashMap = this.c.e;
        Drawable drawable = (Drawable) hashMap.get(applicationInfo.packageName);
        if (drawable == null) {
            try {
                drawable = this.c.f1808b.getApplicationIcon(applicationInfo.packageName);
                hashMap2 = this.c.e;
                hashMap2.put("appInfo.packageName", drawable);
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        kVar.f1864a.setImageDrawable(drawable);
        String str = applicationInfo.packageName;
        try {
            str = this.c.f1808b.getApplicationLabel(this.c.f1808b.getApplicationInfo(applicationInfo.packageName, 0)).toString();
        } catch (PackageManager.NameNotFoundException e2) {
        }
        kVar.f1865b.setText(str);
        kVar.c.setOnClickListener(new j(this, applicationInfo, str));
        return view;
    }
}
