package com.estrongs.android.pop.app.imageviewer;

import android.content.Context;
import android.content.Intent;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.KeyEvent;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ImageViewTouch extends ImageViewTouchBase {

    /* renamed from: a, reason: collision with root package name */
    private final ViewImage21 f924a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f925b;
    private ak c;
    private long d;

    public ImageViewTouch(Context context) {
        super(context);
        this.f924a = (ViewImage21) context;
    }

    public ImageViewTouch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f924a = (ViewImage21) context;
    }

    public float a() {
        return this.k;
    }

    public void a(ak akVar) {
        this.c = akVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(float f, float f2) {
        super.a(f, f2);
        a(true, true);
        RectF rectF = new RectF(0.0f, 0.0f, this.h.b().getWidth(), this.h.b().getHeight());
        f().mapRect(rectF);
        if (Math.abs(rectF.left) < 20.0f && this.c != null) {
            this.c.a(0, f);
        }
        if (Math.abs(rectF.right) - getWidth() >= 20.0f || this.c == null) {
            return;
        }
        this.c.a(1, f);
    }

    /* JADX WARN: Removed duplicated region for block: B:95:0x0147  */
    @Override // com.estrongs.android.pop.app.imageviewer.ImageViewTouchBase, android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        int i2;
        Throwable th;
        int i3;
        int i4;
        if (this.f924a.f929a) {
            return false;
        }
        if (!this.f925b && i >= 19 && i <= 22) {
            return super.onKeyDown(i, keyEvent);
        }
        int i5 = this.f924a.c;
        try {
            try {
                switch (i) {
                    case 19:
                        c(0.0f, 20.0f);
                        a(false, true);
                        return true;
                    case 20:
                        c(0.0f, -20.0f);
                        a(false, true);
                        return true;
                    case 21:
                        if (c() > 1.0f || keyEvent.getEventTime() < this.d) {
                            c(20.0f, 0.0f);
                            a(true, false);
                            i4 = -2;
                        } else {
                            i4 = i5 - 1;
                            this.d = keyEvent.getEventTime() + 500;
                        }
                        if (i4 >= 0 && i4 < this.f924a.e.b()) {
                            synchronized (this.f924a) {
                                this.f924a.b(1);
                                this.f924a.a(i4, true);
                            }
                        } else if (i4 != -2) {
                            a(true, true);
                        }
                        return true;
                    case 22:
                        if (c() > 1.0f || keyEvent.getEventTime() < this.d) {
                            c(-20.0f, 0.0f);
                            a(true, false);
                            i3 = -2;
                        } else {
                            i3 = i5 + 1;
                            this.d = keyEvent.getEventTime() + 500;
                        }
                        if (i3 >= 0 && i3 < this.f924a.e.b()) {
                            synchronized (this.f924a) {
                                this.f924a.b(1);
                                this.f924a.a(i3, true);
                            }
                        } else if (i3 != -2) {
                            a(true, true);
                        }
                        return true;
                    case 23:
                        if (this.f924a.b()) {
                            this.f924a.setResult(-1, new Intent().setData(this.f924a.e.a(this.f924a.c).e()));
                            this.f924a.finish();
                            break;
                        }
                        break;
                    case 67:
                        ac.a(this.f924a, this.f924a.l);
                        break;
                }
                return super.onKeyDown(i, keyEvent);
            } catch (Throwable th2) {
                th = th2;
                i2 = -2;
                if (i2 < 0 && i2 < this.f924a.e.b()) {
                    synchronized (this.f924a) {
                        this.f924a.b(1);
                        this.f924a.a(i2, true);
                    }
                } else if (i2 != -2) {
                    a(true, true);
                }
                throw th;
            }
        } catch (Throwable th3) {
            i2 = i5;
            th = th3;
            if (i2 < 0) {
            }
            if (i2 != -2) {
            }
            throw th;
        }
    }
}
