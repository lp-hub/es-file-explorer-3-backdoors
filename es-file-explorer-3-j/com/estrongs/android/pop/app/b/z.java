package com.estrongs.android.pop.app.b;

import android.content.Context;
import android.view.View;
import android.widget.Button;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.aq;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class z implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String[] f516a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ Button f517b;
    final /* synthetic */ w c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(w wVar, String[] strArr, Button button) {
        this.c = wVar;
        this.f516a = strArr;
        this.f517b = button;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        int i;
        context = this.c.j.f503a;
        aq a2 = new aq(context).a(C0000R.string.unit);
        String[] strArr = this.f516a;
        i = this.c.f511a;
        a2.a(strArr, i, new aa(this)).b();
    }
}
