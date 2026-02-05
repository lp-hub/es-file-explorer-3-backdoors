package com.estrongs.android.ui.b;

import android.widget.TextView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bp implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bk f1671a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bp(bk bkVar) {
        this.f1671a = bkVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        dm dmVar;
        dm dmVar2;
        dm dmVar3;
        TextView textView = this.f1671a.f1664b;
        StringBuilder sb = new StringBuilder();
        dmVar = this.f1671a.k;
        StringBuilder append = sb.append(dmVar.f1742b).append(" ").append(this.f1671a.c).append(", ");
        dmVar2 = this.f1671a.k;
        textView.setText(append.append(dmVar2.c).append(" ").append(this.f1671a.d).toString());
        bk bkVar = this.f1671a;
        TextView textView2 = this.f1671a.f1663a;
        dmVar3 = this.f1671a.k;
        bkVar.a(textView2, dmVar3.d);
    }
}
