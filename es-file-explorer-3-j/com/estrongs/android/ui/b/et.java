package com.estrongs.android.ui.b;

import android.view.View;
import android.widget.ExpandableListView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class et implements ExpandableListView.OnChildClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.a.i f1797a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ eo f1798b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public et(eo eoVar, com.estrongs.android.ui.a.i iVar) {
        this.f1798b = eoVar;
        this.f1797a = iVar;
    }

    @Override // android.widget.ExpandableListView.OnChildClickListener
    public boolean onChildClick(ExpandableListView expandableListView, View view, int i, int i2, long j) {
        com.estrongs.android.ui.a.m child = this.f1797a.getChild(i, i2);
        this.f1798b.c = child.c;
        this.f1798b.c();
        return false;
    }
}
