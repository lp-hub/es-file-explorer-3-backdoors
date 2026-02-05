package com.estrongs.android.pop.app;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class bz implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Bitmap f551a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ bx f552b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bz(bx bxVar, Bitmap bitmap) {
        this.f552b = bxVar;
        this.f551a = bitmap;
    }

    @Override // java.lang.Runnable
    public void run() {
        ((ImageView) this.f552b.f.f546a.findViewById(C0000R.id.user_icon)).setImageBitmap(this.f551a);
    }
}
