package com.estrongs.android.ui.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class el extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ei f1783a;

    /* renamed from: b, reason: collision with root package name */
    private Context f1784b;
    private en[] c;

    public el(ei eiVar, Context context, en[] enVarArr) {
        this.f1783a = eiVar;
        this.f1784b = context;
        this.c = enVarArr;
    }

    public String[] a() {
        String[] strArr = new String[this.c.length * 3];
        for (int i = 0; i < this.c.length; i++) {
            strArr[i * 3] = this.c[i].f1786a;
            strArr[(i * 3) + 1] = this.c[i].f1787b;
            strArr[(i * 3) + 2] = this.c[i].c;
        }
        return strArr;
    }

    public String[] b() {
        int i = 0;
        for (int i2 = 0; i2 < this.c.length; i2++) {
            if (this.c[i2].a()) {
                i++;
            }
        }
        String[] strArr = new String[i * 3];
        int i3 = 0;
        for (int i4 = 0; i3 < i && i4 < this.c.length; i4++) {
            if (this.c[i4].a()) {
                strArr[i3 * 3] = this.c[i4].f1786a;
                strArr[(i3 * 3) + 1] = this.c[i4].f1787b;
                strArr[(i3 * 3) + 2] = this.c[i4].c;
                i3++;
            }
        }
        return strArr;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.c == null) {
            return 0;
        }
        return this.c.length;
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
            view = com.estrongs.android.pop.esclasses.e.a(this.f1784b).inflate(C0000R.layout.root_explorer_mount_item, (ViewGroup) null);
        }
        ((TextView) view.findViewById(C0000R.id.pathName)).setText(this.c[i].f1786a);
        RadioGroup radioGroup = (RadioGroup) view.findViewById(C0000R.id.rw_type);
        radioGroup.setTag(Integer.valueOf(i));
        if (this.c[i].c.equals("ro")) {
            radioGroup.check(C0000R.id.readOnly);
        } else {
            radioGroup.check(C0000R.id.readWrite);
        }
        radioGroup.setOnCheckedChangeListener(new em(this));
        return view;
    }
}
