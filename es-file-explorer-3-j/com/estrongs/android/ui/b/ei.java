package com.estrongs.android.ui.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class ei extends ag {

    /* renamed from: a, reason: collision with root package name */
    private ListView f1778a;

    /* renamed from: b, reason: collision with root package name */
    private el f1779b;

    public ei(Context context) {
        super(context);
        View inflate = com.estrongs.android.pop.esclasses.e.a(context).inflate(C0000R.layout.root_explorer, (ViewGroup) null);
        setContentView(inflate);
        setTitle(C0000R.string.preference_root_settings);
        this.f1778a = (ListView) inflate.findViewById(C0000R.id.mountList);
        this.f1778a.setSelector(C0000R.drawable.popupbox_listview_selector);
        String[] k = com.estrongs.fs.impl.local.h.k();
        en[] enVarArr = new en[k.length / 3];
        for (int i = 0; i < enVarArr.length; i++) {
            if (k[(i * 3) + 2].toLowerCase().equals("ro")) {
                enVarArr[i] = new en(this, k[i * 3], k[(i * 3) + 1], "ro");
            } else {
                enVarArr[i] = new en(this, k[i * 3], k[(i * 3) + 1], "rw");
            }
        }
        this.f1779b = new el(this, this.mContext, enVarArr);
        this.f1778a.setDivider(this.mContext.getResources().getDrawable(C0000R.drawable.toolbar_search_sp));
        this.f1778a.setFocusable(true);
        this.f1778a.setCacheColorHint(0);
        this.f1778a.setAdapter((ListAdapter) this.f1779b);
        setConfirmButton(context.getText(C0000R.string.confirm_ok), new ej(this, context));
        setCancelButton(context.getText(C0000R.string.confirm_cancel), new ek(this));
    }

    public static boolean a(Context context) {
        com.estrongs.android.pop.q.a(context).a(true);
        boolean a2 = com.estrongs.fs.impl.local.h.a(context, true);
        if (a2) {
            com.estrongs.android.util.a a3 = com.estrongs.android.util.a.a();
            if (a3 != null) {
                a3.a("Root_Try", "Root_Try");
            }
        } else {
            com.estrongs.android.pop.q.a(context).a(false);
        }
        com.estrongs.fs.a.b.a().c();
        return a2;
    }
}
