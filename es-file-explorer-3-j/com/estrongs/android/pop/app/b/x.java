package com.estrongs.android.pop.app.b;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import com.estrongs.android.ui.b.aq;

/* loaded from: classes.dex */
class x implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ q f513a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Button f514b;
    final /* synthetic */ w c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(w wVar, q qVar, Button button) {
        this.c = wVar;
        this.f513a = qVar;
        this.f514b = button;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        context = this.c.j.f503a;
        new aq(context).a(this.c.i).a((CharSequence[]) this.c.f.toArray(new String[0]), this.c.f.indexOf(this.f514b.getText()), new y(this)).b();
    }
}
