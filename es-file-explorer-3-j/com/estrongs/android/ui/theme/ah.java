package com.estrongs.android.ui.theme;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class ah implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f2525a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ af f2526b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ah(af afVar, int i) {
        this.f2526b = afVar;
        this.f2525a = i;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        Context context;
        if (motionEvent.getAction() == 0) {
            context = this.f2526b.f2522b;
            view.setBackgroundColor(context.getResources().getColor(C0000R.color.blue_background));
            return false;
        }
        if (motionEvent.getAction() != 3 && motionEvent.getAction() != 1) {
            return false;
        }
        view.setBackgroundDrawable(this.f2526b.b(this.f2525a));
        return false;
    }
}
