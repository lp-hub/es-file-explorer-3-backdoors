package com.estrongs.android.b;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;

/* loaded from: classes.dex */
public abstract class a implements Animatable {

    /* renamed from: a, reason: collision with root package name */
    private String f255a;

    /* renamed from: b, reason: collision with root package name */
    private b f256b;
    private boolean c = false;

    public a(String str) {
        this.f255a = str;
    }

    public abstract void a(a aVar, Bitmap bitmap);

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.c;
    }

    @Override // android.graphics.drawable.Animatable
    public synchronized void start() {
        if (!this.c) {
            this.f256b = new b(this);
            this.f256b.execute(new Void[0]);
            this.c = true;
        }
    }

    @Override // android.graphics.drawable.Animatable
    public synchronized void stop() {
        if (this.c) {
            if (this.f256b != null) {
                this.f256b.a();
            }
            this.c = false;
        }
    }
}
