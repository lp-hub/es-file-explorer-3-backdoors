package com.estrongs.android.ui.drag;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Handler;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f1949a;

    /* renamed from: b, reason: collision with root package name */
    private k f1950b;
    private long c = System.currentTimeMillis();
    private int d;
    private int e;
    private int f;

    public f(d dVar, k kVar, int i, int i2, int i3) {
        this.f1949a = dVar;
        this.f1950b = kVar;
        this.d = i;
        this.e = i2;
        this.f = i3;
    }

    private int a() {
        List list;
        list = this.f1949a.v;
        int size = 30 / list.size();
        if (size < 5) {
            return 5;
        }
        if (size > 15) {
            return 15;
        }
        return size;
    }

    private Bitmap a(Bitmap bitmap, Bitmap bitmap2) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth() + a(), bitmap.getHeight() + a(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        canvas.drawBitmap(bitmap2, r0 - bitmap2.getWidth(), 0.0f, paint);
        canvas.drawBitmap(bitmap, 0.0f, r1 - bitmap.getHeight(), paint);
        return createBitmap;
    }

    private int b() {
        int a2 = this.d * a();
        if (a2 > 30) {
            return 30;
        }
        return a2;
    }

    double a(float f, float f2) {
        return Math.sqrt((f2 - f) / f2);
    }

    @Override // java.lang.Runnable
    public void run() {
        k kVar;
        k kVar2;
        k kVar3;
        k kVar4;
        int i;
        int i2;
        k kVar5;
        k kVar6;
        int i3;
        int i4;
        boolean z;
        Handler handler;
        kVar = this.f1949a.t;
        if (kVar == null) {
            this.f1950b.c();
            this.f1950b = null;
            return;
        }
        int currentTimeMillis = (int) (System.currentTimeMillis() - this.c);
        if (currentTimeMillis >= 700) {
            kVar2 = this.f1949a.t;
            Bitmap d = kVar2.d();
            Bitmap d2 = this.f1950b.d();
            Bitmap a2 = a(d, d2);
            kVar3 = this.f1949a.t;
            kVar3.a(a2, a());
            kVar4 = this.f1949a.t;
            i = this.f1949a.C;
            i2 = this.f1949a.D;
            kVar4.a(i, i2);
            d.recycle();
            d2.recycle();
            this.f1950b.c();
            this.f1950b = null;
            return;
        }
        int i5 = this.e;
        kVar5 = this.f1949a.t;
        int e = i5 - kVar5.e();
        int i6 = this.f;
        kVar6 = this.f1949a.t;
        int f = i6 - kVar6.f();
        i3 = this.f1949a.C;
        int b2 = (int) (((i3 + b()) + e) - (a(currentTimeMillis, 700.0f) * (e + b())));
        i4 = this.f1949a.D;
        this.f1950b.a(b2, (int) (((i4 - b()) + f) - (a(currentTimeMillis, 700.0f) * (f - b()))));
        z = this.f1949a.y;
        if (z) {
            return;
        }
        handler = this.f1949a.d;
        handler.postDelayed(this, 25L);
    }
}
