package com.estrongs.android.ui.e;

import android.view.View;

/* loaded from: classes.dex */
class g implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f2151a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(c cVar) {
        this.f2151a = cVar;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        com.estrongs.android.view.a.a a2 = this.f2151a.a(((Integer) view.getTag()).intValue());
        if (a2.d() != null) {
            a2.e();
            return true;
        }
        CharSequence title = a2.getTitle();
        if (title == null) {
            title = this.f2151a.f1968b.getString(a2.a());
        }
        com.estrongs.android.ui.view.z.a(this.f2151a.f1968b, title, 0).show();
        return true;
    }
}
