package com.estrongs.android.ui.view;

import android.app.Activity;
import android.util.Log;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import com.estrongs.android.pop.esclasses.ESAbsToolbarActivity;
import com.estrongs.android.ui.e.bz;
import com.estrongs.android.ui.e.fy;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class az {

    /* renamed from: a, reason: collision with root package name */
    private RelativeLayout f2624a;

    /* renamed from: b, reason: collision with root package name */
    private View f2625b;
    private int e;
    private String f;
    private Activity j;
    private bb d = null;
    private Map<String, com.estrongs.android.ui.e.a> c = new HashMap();
    private boolean g = false;
    private boolean h = true;
    private boolean i = true;

    public az(Activity activity, RelativeLayout relativeLayout, int i) {
        this.j = activity;
        this.f2624a = relativeLayout;
        this.e = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(View view) {
        if (this.f2625b != null) {
            this.f2625b.setVisibility(4);
        }
        this.f2625b = view;
        view.setVisibility(0);
    }

    private void a(View view, String str) {
        if (this.f2625b == view) {
            return;
        }
        if (this.f2625b == null) {
            view.setVisibility(0);
            this.f2625b = view;
            return;
        }
        String str2 = new String(str);
        Animation g = g();
        g.setAnimationListener(new ba(this, str2));
        this.f2625b.clearAnimation();
        Animation f = f();
        view.setVisibility(0);
        view.setAnimation(g);
        g.start();
        this.f2625b.setVisibility(4);
        this.f2625b.setAnimation(f);
        f.start();
        this.f2625b = view;
    }

    private Animation f() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.1f);
        alphaAnimation.setDuration(200L);
        alphaAnimation.setInterpolator(new AccelerateInterpolator());
        return alphaAnimation;
    }

    private Animation g() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.1f, 1.0f);
        alphaAnimation.setDuration(200L);
        alphaAnimation.setInterpolator(new AccelerateInterpolator());
        return alphaAnimation;
    }

    public com.estrongs.android.ui.e.a a(String str) {
        return this.c.get(str);
    }

    public void a(String str, com.estrongs.android.ui.e.a aVar) {
        aVar.a().setVisibility(4);
        this.c.put(str, aVar);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (aVar.a().getParent() == null) {
            this.f2624a.addView(aVar.a(), layoutParams);
        }
    }

    public void a(String str, Boolean bool) {
        if (this.h || !bool.booleanValue()) {
            if (str == null || !this.c.containsKey(str)) {
                Log.v("ToolBarSwitcher", "Illegal command!");
                return;
            }
            this.f = str;
            com.estrongs.android.ui.e.a aVar = this.c.get(str);
            if (aVar instanceof bz) {
                ((bz) aVar).d(1);
            }
            if (aVar instanceof fy) {
                ((fy) aVar).h();
            }
            if (str == "normal_mode" && (this.j instanceof ESAbsToolbarActivity) && ((ESAbsToolbarActivity) this.j).c()) {
                ((ESAbsToolbarActivity) this.j).b(false);
                ((ESAbsToolbarActivity) this.j).a(false);
                bool = false;
            }
            if (bool.booleanValue()) {
                a(aVar.a(), str);
            } else {
                a(aVar.a());
            }
        }
    }

    public void a(boolean z) {
        this.h = z;
    }

    public boolean a() {
        return this.g;
    }

    public String b() {
        return this.f;
    }

    public void b(boolean z) {
        this.i = z;
        if (!z) {
            Iterator<com.estrongs.android.ui.e.a> it = this.c.values().iterator();
            while (it.hasNext()) {
                it.next().a().setVisibility(4);
            }
        }
        if (z) {
            this.f2625b.setVisibility(0);
        }
    }

    public void c() {
        com.estrongs.android.ui.e.a a2 = a(this.f);
        if (a2 != null) {
            a2.g();
        }
        this.f2624a.removeAllViews();
        this.c.clear();
    }

    public boolean d() {
        com.estrongs.android.ui.e.a a2;
        if (this.f == null || (a2 = a(this.f)) == null) {
            return false;
        }
        return a2.e();
    }

    public boolean e() {
        com.estrongs.android.ui.e.a a2;
        if (this.f == null || (a2 = a(this.f)) == null) {
            return false;
        }
        return a2.f();
    }
}
