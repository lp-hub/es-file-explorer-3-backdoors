package com.estrongs.android.ui.guesture;

import android.annotation.SuppressLint;
import android.content.Context;
import android.gesture.Gesture;
import android.gesture.GesturePoint;
import android.gesture.GestureStroke;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.p;
import com.estrongs.android.pop.q;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class ESGestureCtrl extends FrameLayout {

    /* renamed from: b, reason: collision with root package name */
    public static float f2229b = 0.0f;

    /* renamed from: a, reason: collision with root package name */
    public boolean f2230a;
    private ArrayList<GesturePoint> c;
    private boolean d;
    private ESGesturePanel e;

    public ESGestureCtrl(Context context) {
        super(context);
        this.f2230a = true;
        this.c = null;
        this.d = false;
        this.e = null;
    }

    public ESGestureCtrl(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2230a = true;
        this.c = null;
        this.d = false;
        this.e = null;
    }

    public ESGestureCtrl(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2230a = true;
        this.c = null;
        this.d = false;
        this.e = null;
    }

    private boolean a(float f, float f2) {
        if (this.e != null) {
            float d = this.e.d();
            float e = this.e.e();
            if (f >= d - f2229b && f <= d + f2229b && f2 >= e - f2229b && f2 <= f2229b + e) {
                return true;
            }
        }
        return false;
    }

    public abstract void a(Gesture gesture);

    public void a(ESGesturePanel eSGesturePanel) {
        this.e = eSGesturePanel;
    }

    public void a(boolean z) {
        this.d = z;
        if (z) {
            this.e.setBackgroundResource(C0000R.drawable.gesture_move_start_bg);
            this.e.a();
        } else {
            this.e.setBackgroundDrawable(null);
            this.e.b();
        }
    }

    public boolean a() {
        if (!this.d) {
            return false;
        }
        a(false);
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x005f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.view.ViewGroup, android.view.View
    @SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int i;
        boolean z;
        if (motionEvent == null) {
            return true;
        }
        if (p.a() >= 8) {
            try {
                i = motionEvent.getActionIndex();
            } catch (Exception e) {
                i = 0;
            }
        } else {
            i = 0;
        }
        if (this.e == null || i != 0 || !b.c() || !b.f2234a) {
            try {
                return super.dispatchTouchEvent(motionEvent);
            } catch (Exception e2) {
                return true;
            }
        }
        try {
            com.estrongs.android.ui.f.a K = FileExplorerActivity.E().K();
            if (K != null && K.c() != 0) {
                z = super.dispatchTouchEvent(motionEvent);
            } else if (!FileExplorerActivity.E().U()) {
                switch (motionEvent.getAction()) {
                    case 0:
                        if (!a(motionEvent.getX(), motionEvent.getY())) {
                            this.f2230a = false;
                            if (this.d) {
                                a(false);
                                z = true;
                                break;
                            }
                        } else {
                            try {
                                this.f2230a = true;
                                this.c = new ArrayList<>();
                                if (!this.d) {
                                    this.e.a(motionEvent.getX(), motionEvent.getY());
                                    this.c.add(new GesturePoint(motionEvent.getX(), motionEvent.getY(), System.currentTimeMillis()));
                                }
                                this.e.a();
                            } catch (Exception e3) {
                            }
                        }
                        if (!this.f2230a) {
                            z = true;
                            break;
                        } else {
                            try {
                                z = super.dispatchTouchEvent(motionEvent);
                                break;
                            } catch (Exception e4) {
                                z = true;
                                break;
                            }
                        }
                    case 1:
                    case 3:
                        if (this.f2230a && this.c != null) {
                            try {
                                if (this.d) {
                                    q.a(getContext()).a(new Point(this.e.d(), this.e.e()), getContext().getResources().getConfiguration().orientation == 1);
                                } else {
                                    this.e.b();
                                    Gesture gesture = new Gesture();
                                    gesture.addStroke(new GestureStroke(this.c));
                                    a(gesture);
                                }
                                this.f2230a = false;
                            } catch (Exception e5) {
                            }
                            z = true;
                            break;
                        }
                        if (!this.f2230a) {
                        }
                        break;
                    case 2:
                        if (this.f2230a) {
                            try {
                                if (this.d) {
                                    int x = (int) motionEvent.getX();
                                    int y = (int) motionEvent.getY();
                                    if (x < f2229b) {
                                        x = (int) f2229b;
                                    }
                                    if (x > getWidth() - f2229b) {
                                        x = getWidth() - ((int) f2229b);
                                    }
                                    if (y < f2229b) {
                                        y = (int) f2229b;
                                    }
                                    if (y > getHeight() - f2229b) {
                                        y = getHeight() - ((int) f2229b);
                                    }
                                    this.e.a(x, y);
                                } else {
                                    this.e.a(motionEvent.getX(), motionEvent.getY());
                                    this.c.add(new GesturePoint(motionEvent.getX(), motionEvent.getY(), System.currentTimeMillis()));
                                }
                                this.e.a();
                            } catch (Exception e6) {
                            }
                        }
                        if (!this.f2230a) {
                        }
                        break;
                    default:
                        if (!this.f2230a) {
                        }
                        break;
                }
            } else {
                z = super.dispatchTouchEvent(motionEvent);
            }
            return z;
        } catch (Exception e7) {
            return true;
        }
    }
}
