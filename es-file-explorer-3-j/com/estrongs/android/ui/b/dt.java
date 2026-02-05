package com.estrongs.android.ui.b;

import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class dt implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ dn f1754a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dt(dn dnVar) {
        this.f1754a = dnVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        dm dmVar;
        dm dmVar2;
        TextView textView;
        TextView textView2;
        dm dmVar3;
        TextView textView3;
        TextView textView4;
        dm dmVar4;
        if (com.estrongs.android.util.ak.aC(this.f1754a.c.getPath())) {
            textView3 = this.f1754a.l;
            textView3.setText(C0000R.string.property_pictures);
            textView4 = this.f1754a.m;
            dmVar4 = this.f1754a.o;
            textView4.setText(String.valueOf(dmVar4.f1742b));
        } else {
            StringBuilder sb = new StringBuilder();
            dmVar = this.f1754a.o;
            StringBuilder append = sb.append(dmVar.f1742b).append(" ").append(this.f1754a.d).append(", ");
            dmVar2 = this.f1754a.o;
            String sb2 = append.append(dmVar2.c).append(" ").append(this.f1754a.e).toString();
            textView = this.f1754a.m;
            textView.setText(sb2);
        }
        dn dnVar = this.f1754a;
        textView2 = this.f1754a.k;
        dmVar3 = this.f1754a.o;
        dnVar.a(textView2, dmVar3.d);
    }
}
