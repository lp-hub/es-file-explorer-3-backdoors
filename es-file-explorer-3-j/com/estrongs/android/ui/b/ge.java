package com.estrongs.android.ui.b;

import android.view.View;
import android.widget.ImageView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ge implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ga f1850a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ge(ga gaVar) {
        this.f1850a = gaVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z;
        boolean z2;
        boolean z3;
        ImageView imageView;
        ImageView imageView2;
        z = this.f1850a.q;
        if (z) {
            return;
        }
        ga gaVar = this.f1850a;
        z2 = this.f1850a.o;
        gaVar.o = !z2;
        z3 = this.f1850a.o;
        if (z3) {
            imageView2 = this.f1850a.k;
            imageView2.setImageResource(C0000R.drawable.popupbox_checkbox_checked);
        } else {
            imageView = this.f1850a.k;
            imageView.setImageResource(C0000R.drawable.popupbox_checkbox_unchecked);
        }
    }
}
