package android.support.v4.view;

import android.view.View;

/* loaded from: classes.dex */
class an implements as {
    @Override // android.support.v4.view.as
    public int a(View view) {
        return 2;
    }

    long a() {
        return 10L;
    }

    @Override // android.support.v4.view.as
    public void a(View view, a aVar) {
    }

    @Override // android.support.v4.view.as
    public boolean a(View view, int i) {
        return false;
    }

    @Override // android.support.v4.view.as
    public void b(View view) {
        view.postInvalidateDelayed(a());
    }

    @Override // android.support.v4.view.as
    public void b(View view, int i) {
    }

    @Override // android.support.v4.view.as
    public int c(View view) {
        return 0;
    }
}
