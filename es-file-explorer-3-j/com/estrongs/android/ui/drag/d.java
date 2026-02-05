package com.estrongs.android.ui.drag;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.IBinder;
import android.os.Vibrator;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import com.estrongs.android.view.ar;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;

/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    public static int f1947a = 0;

    /* renamed from: b, reason: collision with root package name */
    public static int f1948b = 1;
    private int C;
    private int D;
    private boolean G;
    private com.estrongs.fs.g H;
    private ar I;
    private e L;
    private IBinder M;
    private View N;
    private i O;
    private Rect R;
    private boolean S;
    private RectF T;
    private o U;
    private InputMethodManager V;
    private int W;
    private Context c;
    private final Vibrator e;
    private boolean i;
    private boolean j;
    private float k;
    private float l;
    private View n;
    private float o;
    private float p;
    private int q;
    private j r;
    private Object s;
    private k t;
    private int u;
    private List<h> v;
    private boolean y;
    private Rect f = new Rect();
    private Region g = new Region();
    private final int[] h = new int[2];
    private DisplayMetrics m = new DisplayMetrics();
    private final int w = 300;
    private final int x = 700;
    private final int z = 30;
    private final int A = 15;
    private final int B = 5;
    private Rect E = new Rect();
    private Rect F = new Rect();
    private ArrayList<o> J = new ArrayList<>();
    private ArrayList<o> K = new ArrayList<>();
    private int P = 0;
    private g Q = new g(this);
    private Handler d = new Handler();

    public d(Context context) {
        this.c = context;
        this.q = com.estrongs.android.ui.d.a.a(this.c, 20.0f);
        this.e = (Vibrator) this.c.getSystemService("vibrator");
        this.W = ViewConfiguration.get(this.c).getScaledTouchSlop() - 1;
    }

    private static int a(int i, int i2, int i3) {
        return i < i2 ? i2 : i >= i3 ? i3 - 1 : i;
    }

    private Bitmap a(View view) {
        if (!view.isDrawingCacheEnabled()) {
            view.setDrawingCacheEnabled(true);
        }
        view.setDrawingCacheQuality(1048576);
        view.clearFocus();
        view.setPressed(false);
        boolean willNotCacheDrawing = view.willNotCacheDrawing();
        view.setWillNotCacheDrawing(false);
        view.destroyDrawingCache();
        view.buildDrawingCache();
        Bitmap drawingCache = view.getDrawingCache();
        if (drawingCache == null) {
            Log.e("Launcher.DragController", "failed getViewBitmap(" + view + ")", new RuntimeException());
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawingCache);
        view.destroyDrawingCache();
        view.setWillNotCacheDrawing(willNotCacheDrawing);
        return createBitmap;
    }

    private o a(int i, int i2, int[] iArr) {
        Rect rect = this.f;
        ArrayList<o> arrayList = this.K;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            DragActionZone dragActionZone = (DragActionZone) arrayList.get(size);
            dragActionZone.getHitRect(rect);
            dragActionZone.getLocationOnScreen(iArr);
            rect.offset(iArr[0] - dragActionZone.getLeft(), iArr[1] - dragActionZone.getTop());
            if (rect.contains(i, i2) && dragActionZone.a(rect, i, i2)) {
                this.S = true;
                this.P = 0;
                iArr[0] = i - iArr[0];
                iArr[1] = i2 - iArr[1];
                return dragActionZone;
            }
        }
        this.S = false;
        if (!this.G && !this.E.contains(this.C, this.D)) {
            return null;
        }
        ArrayList<o> arrayList2 = this.J;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            o oVar = arrayList2.get(size2);
            oVar.getHitRect(rect);
            oVar.getLocationOnScreen(iArr);
            rect.offset(iArr[0] - oVar.getLeft(), iArr[1] - oVar.getTop());
            if (rect.contains(i, i2)) {
                iArr[0] = i - iArr[0];
                iArr[1] = i2 - iArr[1];
                return oVar;
            }
        }
        return null;
    }

    private void a(Bitmap bitmap, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        int i8 = ((int) this.k) - i;
        int i9 = ((int) this.l) - i2;
        try {
            k kVar = new k(this.c, bitmap, i8, i9, i3, i4, i5, i6);
            kVar.a(this.M, (int) this.k, (int) this.l);
            this.d.postDelayed(new f(this, kVar, i7, i8, i9), 300L);
        } catch (Throwable th) {
        }
    }

    private void a(Bitmap bitmap, int i, int i2, int i3, int i4, int i5, int i6, j jVar, Object obj, int i7) {
        if (this.V == null) {
            this.V = (InputMethodManager) this.c.getSystemService("input_method");
        }
        this.V.hideSoftInputFromWindow(this.M, 0);
        int i8 = ((int) this.k) - i;
        int i9 = ((int) this.l) - i2;
        this.o = this.k - i;
        this.p = this.l - i2;
        try {
            k kVar = new k(this.c, bitmap, i8, i9, i3, i4, i5, i6);
            this.t = kVar;
            kVar.a(this.M, (int) this.k, (int) this.l);
        } catch (Throwable th) {
        }
        bitmap.recycle();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean a(float f, float f2) {
        int[] iArr = this.h;
        o a2 = a((int) f, (int) f2, iArr);
        if (a2 == 0) {
            return false;
        }
        a2.d(this.r, iArr[0], iArr[1], (int) this.o, (int) this.p, this.t, this.s);
        if (!a2.e(this.r, iArr[0], iArr[1], (int) this.o, (int) this.p, this.t, this.s)) {
            this.r.a((View) a2, false);
            return true;
        }
        a2.a(this.r, iArr[0], iArr[1], (int) this.o, (int) this.p, this.t, this.s);
        this.r.a((View) a2, true);
        return true;
    }

    private void f() {
        boolean z;
        if (this.H == null) {
            return;
        }
        this.i = true;
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.I.w());
        this.s = arrayList;
        String absolutePath = this.H.getAbsolutePath();
        Map<String, h> E = this.I.E();
        h hVar = E.get(absolutePath);
        if (hVar != null) {
            this.n = hVar.b();
            Drawable background = this.n.getBackground();
            this.n.setBackgroundDrawable(null);
            Bitmap a2 = a(this.n);
            this.n.setBackgroundDrawable(background);
            E.remove(absolutePath);
            ArrayList arrayList2 = new ArrayList();
            for (String str : E.keySet()) {
                h hVar2 = E.get(str);
                if (!arrayList2.contains(hVar2)) {
                    String a3 = ar.a(hVar2.b());
                    if (a3 == null || !a3.equals(str)) {
                        hVar2.a((DragGrid) null);
                        arrayList2.add(hVar2);
                    } else {
                        arrayList2.add(hVar2);
                    }
                }
            }
            this.v = arrayList2;
            if (a2 != null) {
                int[] iArr = this.h;
                this.n.getLocationOnScreen(iArr);
                a(a2, iArr[0], iArr[1], 0, 0, a2.getWidth(), a2.getHeight(), this.r, this.s, this.u);
                int firstVisiblePosition = this.I.D().getFirstVisiblePosition();
                this.I.D().getLastVisiblePosition();
                int i = this.c.getResources().getDisplayMetrics().widthPixels;
                int i2 = this.c.getResources().getDisplayMetrics().heightPixels;
                this.y = false;
                int size = this.v.size() <= 8 ? this.v.size() : 8;
                for (int i3 = 0; i3 < size; i3++) {
                    h hVar3 = this.v.get(i3);
                    Bitmap c = hVar3.c();
                    if (c == null) {
                        DragGrid b2 = hVar3.b();
                        if (b2 == null) {
                            continue;
                        } else {
                            Drawable background2 = b2.getBackground();
                            b2.setBackgroundDrawable(null);
                            c = a((View) b2);
                            b2.setBackgroundDrawable(background2);
                            z = true;
                        }
                    } else {
                        z = false;
                    }
                    if (c == null) {
                        g();
                        return;
                    }
                    int[] iArr2 = this.h;
                    if (hVar3.b() != null) {
                        hVar3.b().getLocationOnScreen(iArr2);
                    } else {
                        iArr2[0] = new Random().nextInt(i - c.getWidth());
                        if (hVar3.a() < firstVisiblePosition) {
                            iArr2[1] = 0;
                        } else {
                            iArr2[1] = i2;
                        }
                    }
                    a(c, iArr2[0], iArr2[1], 0, 0, c.getWidth(), c.getHeight(), i3 + 1);
                    if (z) {
                        c.recycle();
                    }
                }
                this.I.e();
                this.E = this.O.e();
                this.F = new Rect(this.E.left + this.q, this.E.top + this.q, this.E.right - this.q, this.E.bottom - this.q);
                if (this.L != null) {
                    this.L.a(this.r, this.s, this.u);
                }
            }
        }
    }

    private void g() {
        this.j = false;
        if (this.i) {
            this.i = false;
            if (this.n != null) {
                this.n = null;
            }
            if (this.v != null) {
                this.v.clear();
            }
            if (this.L != null) {
                this.L.a();
            }
            if (this.t != null) {
                this.t.c();
                this.t = null;
            }
            this.r = null;
            this.s = null;
            if (this.J != null) {
                this.J.clear();
            }
            if (this.K != null) {
                this.K.clear();
            }
        }
    }

    private void h() {
        ((WindowManager) this.c.getSystemService("window")).getDefaultDisplay().getMetrics(this.m);
    }

    public void a() {
        g();
    }

    public void a(e eVar) {
        this.L = eVar;
    }

    public void a(i iVar) {
        this.O = iVar;
    }

    public void a(o oVar) {
        this.J.add(oVar);
    }

    public void a(com.estrongs.fs.g gVar, ar arVar, j jVar, int i, boolean z) {
        this.H = gVar;
        this.I = arVar;
        this.u = i;
        this.r = jVar;
        this.j = true;
        this.S = false;
        this.G = false;
        if (!z || this.H == null) {
            return;
        }
        f();
    }

    public boolean a(KeyEvent keyEvent) {
        return this.i;
    }

    public boolean a(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            h();
        }
        int rawX = (int) motionEvent.getRawX();
        int rawY = (int) motionEvent.getRawY();
        int a2 = a(rawX, 0, this.m.widthPixels);
        int a3 = a(rawY, 0, this.m.heightPixels);
        switch (action) {
            case 0:
                this.k = a2;
                this.l = a3;
                this.C = (int) this.k;
                this.D = (int) this.l;
                this.U = null;
                this.R = new Rect(rawX - this.W, rawY - this.W, rawX + this.W, rawY + this.W);
                break;
            case 1:
            case 3:
                if (this.i) {
                    a(a2, a3);
                }
                g();
                break;
            case 2:
                if (!this.i && this.j && !this.R.contains(rawX, rawY)) {
                    this.i = true;
                    f();
                    break;
                }
                break;
        }
        return this.i;
    }

    public boolean a(View view, int i) {
        return this.N != null && this.N.dispatchUnhandledMove(view, i);
    }

    public void b() {
        this.K.clear();
        this.J.clear();
    }

    public void b(o oVar) {
        this.K.add(oVar);
    }

    public boolean b(MotionEvent motionEvent) {
        if (!this.i) {
            return false;
        }
        int action = motionEvent.getAction();
        int a2 = a((int) motionEvent.getRawX(), 0, this.m.widthPixels);
        int a3 = a((int) motionEvent.getRawY(), 0, this.m.heightPixels);
        switch (action) {
            case 0:
                this.k = a2;
                this.l = a3;
                if (this.E.contains(a2, a3) && !this.F.contains(a2, a3)) {
                    this.P = 1;
                    this.d.postDelayed(this.Q, 500L);
                    break;
                } else {
                    this.P = 0;
                    break;
                }
                break;
            case 1:
                this.d.removeCallbacks(this.Q);
                if (this.i) {
                    a(a2, a3);
                }
                g();
                break;
            case 2:
                if (this.t != null) {
                    this.t.a((int) motionEvent.getRawX(), (int) motionEvent.getRawY());
                }
                this.C = (int) motionEvent.getRawX();
                this.D = (int) motionEvent.getRawY();
                int[] iArr = this.h;
                o a4 = a(a2, a3, iArr);
                if (a4 != null) {
                    if (this.U == a4) {
                        a4.c(this.r, iArr[0], iArr[1], (int) this.o, (int) this.p, this.t, this.s);
                    } else {
                        if (this.U != null) {
                            this.U.d(this.r, iArr[0], iArr[1], (int) this.o, (int) this.p, this.t, this.s);
                        }
                        a4.b(this.r, iArr[0], iArr[1], (int) this.o, (int) this.p, this.t, this.s);
                    }
                } else if (this.U != null) {
                    this.U.d(this.r, iArr[0], iArr[1], (int) this.o, (int) this.p, this.t, this.s);
                }
                this.U = a4;
                boolean contains = this.T != null ? this.T.contains(a2, a3) : false;
                if (!this.S && !this.G) {
                    if (!contains && a2 < this.F.left && a2 > this.E.left) {
                        if (this.P == 0) {
                            this.P = 1;
                            this.Q.a(0);
                            this.d.postDelayed(this.Q, 500L);
                            break;
                        }
                    } else if (!contains && a2 > this.F.right && a2 < this.E.right) {
                        if (this.P == 0) {
                            this.P = 1;
                            this.Q.a(1);
                            this.d.postDelayed(this.Q, 500L);
                            break;
                        }
                    } else if (!contains && a3 < this.F.top) {
                        if (this.P == 0) {
                            this.P = 1;
                            this.Q.a(2);
                            this.d.postDelayed(this.Q, 500L);
                            break;
                        }
                    } else if (!contains && a3 > this.F.bottom) {
                        if (this.P == 0) {
                            this.P = 1;
                            this.Q.a(3);
                            this.d.postDelayed(this.Q, 500L);
                            break;
                        }
                    } else if (this.P == 1) {
                        this.P = 0;
                        this.Q.a(1);
                        this.d.removeCallbacks(this.Q);
                        break;
                    }
                }
                break;
            case 3:
                a();
                break;
        }
        return true;
    }

    public void c() {
        this.G = true;
    }

    public Object d() {
        if (this.i) {
            return this.s;
        }
        return null;
    }

    public boolean e() {
        return this.i;
    }
}
