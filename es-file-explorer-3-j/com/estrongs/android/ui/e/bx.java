package com.estrongs.android.ui.e;

import android.content.Context;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bx implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bv f2024a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bx(bv bvVar) {
        this.f2024a = bvVar;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        Context context;
        Context context2;
        com.estrongs.android.view.a.a b2 = this.f2024a.b(((Integer) view.getTag()).intValue());
        if (b2.d() != null) {
            b2.e();
            return true;
        }
        CharSequence title = b2.getTitle();
        if (title == null) {
            context2 = this.f2024a.f2022b;
            title = context2.getString(b2.a());
        }
        context = this.f2024a.f2022b;
        com.estrongs.android.ui.view.z.a(context, title, 0).show();
        return true;
    }
}
