package com.estrongs.android.pop.app;

import android.R;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gm implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopRemoteImageBrowser f847a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gm(PopRemoteImageBrowser popRemoteImageBrowser) {
        this.f847a = popRemoteImageBrowser;
    }

    @Override // java.lang.Runnable
    public void run() {
        BitmapDrawable bitmapDrawable;
        ImageView imageView;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        BitmapDrawable bitmapDrawable4;
        BitmapDrawable bitmapDrawable5;
        int i;
        int i2;
        ImageView imageView2;
        BitmapDrawable bitmapDrawable6;
        BitmapDrawable bitmapDrawable7;
        ImageView imageView3;
        bitmapDrawable = this.f847a.q;
        if (bitmapDrawable == null) {
            imageView3 = this.f847a.f;
            imageView3.setImageResource(R.drawable.ic_menu_gallery);
        } else {
            if (com.estrongs.android.pop.p.a() < 8) {
                bitmapDrawable3 = this.f847a.q;
                bitmapDrawable3.setAlpha(0);
            }
            imageView = this.f847a.f;
            bitmapDrawable2 = this.f847a.q;
            imageView.setImageDrawable(bitmapDrawable2);
        }
        bitmapDrawable4 = this.f847a.q;
        int intrinsicWidth = bitmapDrawable4.getIntrinsicWidth();
        bitmapDrawable5 = this.f847a.q;
        int intrinsicHeight = bitmapDrawable5.getIntrinsicHeight();
        i = this.f847a.g;
        int i3 = (i - intrinsicWidth) / 2;
        i2 = this.f847a.h;
        int i4 = (i2 - intrinsicHeight) / 2;
        if (i3 < 0) {
            i3 = 0;
        }
        int i5 = i4 >= 0 ? i4 : 0;
        imageView2 = this.f847a.f;
        imageView2.setPadding(i3, i5, i3, i5);
        bitmapDrawable6 = this.f847a.p;
        if (bitmapDrawable6 != null) {
            bitmapDrawable7 = this.f847a.p;
            Bitmap bitmap = bitmapDrawable7.getBitmap();
            if (bitmap != null) {
                bitmap.recycle();
            }
            this.f847a.p = null;
        }
    }
}
