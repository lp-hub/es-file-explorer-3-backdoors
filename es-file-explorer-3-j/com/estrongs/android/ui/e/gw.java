package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gw implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ gu f2177a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gw(gu guVar) {
        this.f2177a = guVar;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        Context context;
        Context context2;
        com.estrongs.android.view.a.a b2 = this.f2177a.b(((Integer) view.getTag()).intValue());
        if (b2 == null) {
            return true;
        }
        if (b2.d() != null) {
            b2.e();
            return true;
        }
        CharSequence title = b2.getTitle();
        if (title == null) {
            context2 = this.f2177a.f2174a;
            title = context2.getString(b2.a());
        }
        context = this.f2177a.f2174a;
        com.estrongs.android.ui.view.z.a(context, title, 0).show();
        return true;
    }
}
