package com.estrongs.android.ui.b;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.view.NaviListView;

/* loaded from: classes.dex */
public class eo {

    /* renamed from: a, reason: collision with root package name */
    private ag f1788a;

    /* renamed from: b, reason: collision with root package name */
    private Context f1789b;
    private String c;

    public eo(Context context) {
        this.f1789b = context;
        d();
    }

    private void d() {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f1789b).inflate(C0000R.layout.dialog_gesture_action, (ViewGroup) null);
        NaviListView naviListView = (NaviListView) inflate.findViewById(C0000R.id.listview);
        com.estrongs.android.ui.a.i iVar = new com.estrongs.android.ui.a.i(this.f1789b, new ep(this, naviListView));
        naviListView.setAdapter(iVar);
        naviListView.setOnGroupClickListener(new eq(this));
        naviListView.setOnChildClickListener(new et(this, iVar));
        this.f1788a = new aq(this.f1789b).a(inflate).a(C0000R.string.gesture_select_action_title).a();
    }

    public String a() {
        return this.c;
    }

    public void a(DialogInterface.OnDismissListener onDismissListener) {
        this.f1788a.setOnDismissListener(onDismissListener);
    }

    public void b() {
        this.f1788a.show();
    }

    public void c() {
        this.f1788a.dismiss();
    }
}
