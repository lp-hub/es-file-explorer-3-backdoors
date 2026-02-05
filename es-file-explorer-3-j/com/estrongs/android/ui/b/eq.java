package com.estrongs.android.ui.b;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.ExpandableListView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class eq implements ExpandableListView.OnGroupClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ eo f1792a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eq(eo eoVar) {
        this.f1792a = eoVar;
    }

    @Override // android.widget.ExpandableListView.OnGroupClickListener
    public boolean onGroupClick(ExpandableListView expandableListView, View view, int i, long j) {
        Context context;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        if (i == 0) {
            context = this.f1792a.f1789b;
            er erVar = new er(this, com.estrongs.android.pop.q.a(context).p());
            int i2 = com.estrongs.android.pop.m.j ? -2 : -1;
            context2 = this.f1792a.f1789b;
            com.estrongs.android.widget.g gVar = new com.estrongs.android.widget.g((Activity) context2, com.estrongs.android.pop.b.b(), erVar, i2);
            gVar.a(false);
            gVar.b(true);
            context3 = this.f1792a.f1789b;
            gVar.c(context3.getString(C0000R.string.confirm_cancel), (DialogInterface.OnClickListener) null);
            gVar.a(i2);
            context4 = this.f1792a.f1789b;
            gVar.a((CharSequence) context4.getString(C0000R.string.open_folder_title));
            context5 = this.f1792a.f1789b;
            gVar.b(context5.getString(C0000R.string.confirm_ok), new es(this, gVar));
            gVar.h();
        }
        return false;
    }
}
