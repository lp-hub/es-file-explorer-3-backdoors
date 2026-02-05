package com.estrongs.android.ui.theme;

import android.view.MotionEvent;
import android.view.View;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class q implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f2555a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ThemeActivity f2556b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(ThemeActivity themeActivity, int i) {
        this.f2556b = themeActivity;
        this.f2555a = i;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                view.setBackgroundResource(C0000R.drawable.listview_background_blue);
                view.setPadding(this.f2555a * 2, this.f2555a, this.f2555a * 2, this.f2555a);
                return false;
            case 1:
            case 3:
                view.setBackgroundResource(C0000R.drawable.theme_setnetwork_bg);
                view.setPadding(this.f2555a * 2, this.f2555a, this.f2555a * 2, this.f2555a);
                return false;
            case 2:
            default:
                return false;
        }
    }
}
