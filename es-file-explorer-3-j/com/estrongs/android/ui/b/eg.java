package com.estrongs.android.ui.b;

import android.app.Activity;
import android.content.DialogInterface;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class eg implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CheckBox f1775a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ CheckBox f1776b;
    final /* synthetic */ CheckBox c;
    final /* synthetic */ CheckBox d;
    final /* synthetic */ CheckBox e;
    final /* synthetic */ CheckBox f;
    final /* synthetic */ CheckBox g;
    final /* synthetic */ CheckBox h;
    final /* synthetic */ CheckBox i;
    final /* synthetic */ CheckBox j;
    final /* synthetic */ CheckBox k;
    final /* synthetic */ CheckBox l;
    final /* synthetic */ dn m;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eg(dn dnVar, CheckBox checkBox, CheckBox checkBox2, CheckBox checkBox3, CheckBox checkBox4, CheckBox checkBox5, CheckBox checkBox6, CheckBox checkBox7, CheckBox checkBox8, CheckBox checkBox9, CheckBox checkBox10, CheckBox checkBox11, CheckBox checkBox12) {
        this.m = dnVar;
        this.f1775a = checkBox;
        this.f1776b = checkBox2;
        this.c = checkBox3;
        this.d = checkBox4;
        this.e = checkBox5;
        this.f = checkBox6;
        this.g = checkBox7;
        this.h = checkBox8;
        this.i = checkBox9;
        this.j = checkBox10;
        this.k = checkBox11;
        this.l = checkBox12;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String g;
        String g2;
        String a2;
        TextView textView;
        Activity activity;
        dialogInterface.dismiss();
        if (this.f1775a.isChecked()) {
            this.m.h.f3106a |= 1;
        } else {
            this.m.h.f3106a &= -2;
        }
        if (this.f1776b.isChecked()) {
            this.m.h.f3106a |= 2;
        } else {
            this.m.h.f3106a &= -3;
        }
        if (this.c.isChecked()) {
            this.m.h.f3106a |= 4;
        } else {
            this.m.h.f3106a &= -5;
        }
        if (this.d.isChecked()) {
            this.m.h.f3106a |= 8;
        } else {
            this.m.h.f3106a &= -9;
        }
        if (this.e.isChecked()) {
            this.m.h.f3106a |= 16;
        } else {
            this.m.h.f3106a &= -17;
        }
        if (this.f.isChecked()) {
            this.m.h.f3106a |= 32;
        } else {
            this.m.h.f3106a &= -33;
        }
        if (this.g.isChecked()) {
            this.m.h.f3106a |= 64;
        } else {
            this.m.h.f3106a &= -65;
        }
        if (this.h.isChecked()) {
            this.m.h.f3106a |= 128;
        } else {
            this.m.h.f3106a &= -129;
        }
        if (this.i.isChecked()) {
            this.m.h.f3106a |= 256;
        } else {
            this.m.h.f3106a &= -257;
        }
        if (this.j.isChecked()) {
            this.m.h.f3106a |= 512;
        } else {
            this.m.h.f3106a &= -513;
        }
        if (this.k.isChecked()) {
            this.m.h.f3106a |= 1024;
        } else {
            this.m.h.f3106a &= -1025;
        }
        if (this.l.isChecked()) {
            this.m.h.f3106a |= 2048;
        } else {
            this.m.h.f3106a &= -2049;
        }
        this.m.h.c = -1;
        g = this.m.g();
        if (!com.estrongs.fs.impl.local.h.a(g, this.m.h)) {
            activity = this.m.ad;
            com.estrongs.android.ui.view.z.a(activity, C0000R.string.operation_failed, 0).show();
        }
        dn dnVar = this.m;
        g2 = this.m.g();
        dnVar.h = com.estrongs.fs.impl.local.h.f(g2);
        this.m.f1743a.setText(com.estrongs.fs.impl.local.h.a(this.m.h.c));
        this.m.f1744b.setText(com.estrongs.fs.impl.local.h.b(this.m.h.f3107b));
        dn dnVar2 = this.m;
        a2 = this.m.a(this.m.h);
        dnVar2.g = a2;
        textView = this.m.p;
        textView.setText(this.m.g.substring(0, 3) + " " + this.m.g.substring(3, 6) + " " + this.m.g.substring(6, 9));
    }
}
