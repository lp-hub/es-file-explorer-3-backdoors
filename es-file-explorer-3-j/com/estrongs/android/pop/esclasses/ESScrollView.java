package com.estrongs.android.pop.esclasses;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;

/* loaded from: classes.dex */
public class ESScrollView extends ScrollView {

    /* renamed from: a, reason: collision with root package name */
    private Handler f1125a;

    /* renamed from: b, reason: collision with root package name */
    View.OnTouchListener f1126b;
    private View c;
    private m d;

    public ESScrollView(Context context) {
        super(context);
        this.f1126b = new k(this);
    }

    public ESScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1126b = new k(this);
    }

    public ESScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1126b = new k(this);
    }

    private void a() {
        setOnTouchListener(this.f1126b);
        this.f1125a = new j(this);
    }

    public static void a(View view, View view2) {
        new Handler().post(new l(view, view2));
    }

    public void a(m mVar) {
        this.d = mVar;
    }

    public void b() {
        this.c = getChildAt(0);
        if (this.c != null) {
            a();
        }
    }
}
