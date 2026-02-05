package com.estrongs.android.widget;

import android.os.Handler;
import android.os.Message;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ax extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ScaledImageView f2900a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ax(ScaledImageView scaledImageView) {
        this.f2900a = scaledImageView;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        long j;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        long currentTimeMillis = System.currentTimeMillis();
        j = this.f2900a.q;
        int i9 = (int) (currentTimeMillis - j);
        i = this.f2900a.p;
        if (i9 >= i) {
            this.f2900a.b();
            return;
        }
        i2 = this.f2900a.p;
        float f = i9 / i2;
        ScaledImageView scaledImageView = this.f2900a;
        i3 = this.f2900a.i;
        i4 = this.f2900a.i;
        i5 = this.f2900a.j;
        scaledImageView.m = (int) (i3 - ((i4 - i5) * f));
        ScaledImageView scaledImageView2 = this.f2900a;
        i6 = this.f2900a.k;
        i7 = this.f2900a.k;
        i8 = this.f2900a.l;
        scaledImageView2.n = (int) (i6 - (f * (i7 - i8)));
        this.f2900a.f();
    }
}
