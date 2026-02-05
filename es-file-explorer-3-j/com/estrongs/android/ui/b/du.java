package com.estrongs.android.ui.b;

import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class du implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f1755a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ int f1756b;
    final /* synthetic */ long c;
    final /* synthetic */ dn d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public du(dn dnVar, int i, int i2, long j) {
        this.d = dnVar;
        this.f1755a = i;
        this.f1756b = i2;
        this.c = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        TextView textView;
        TextView textView2;
        TextView textView3;
        TextView textView4;
        if (com.estrongs.android.util.ak.aC(this.d.c.getPath())) {
            textView3 = this.d.l;
            textView3.setText(C0000R.string.property_pictures);
            textView4 = this.d.m;
            textView4.setText(String.valueOf(this.f1755a));
        } else {
            String str = this.f1755a + " " + this.d.d + ", " + this.f1756b + " " + this.d.e;
            textView = this.d.m;
            textView.setText(str);
        }
        dn dnVar = this.d;
        textView2 = this.d.k;
        dnVar.a(textView2, this.c);
    }
}
