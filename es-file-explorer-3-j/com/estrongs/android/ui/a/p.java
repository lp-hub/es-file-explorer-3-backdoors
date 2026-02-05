package com.estrongs.android.ui.a;

import android.content.Context;
import android.view.View;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class p implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f1598a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ o f1599b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(o oVar, int i) {
        this.f1599b = oVar;
        this.f1598a = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        Context context2;
        if (!com.estrongs.android.ui.guesture.b.a(this.f1599b.getItem(this.f1598a))) {
            context = this.f1599b.f1596a;
            context2 = this.f1599b.f1596a;
            com.estrongs.android.ui.view.z.a(context, context2.getString(C0000R.string.toast_gesture_save_failed), 0).show();
        }
        this.f1599b.notifyDataSetChanged();
    }
}
