package com.estrongs.android.ui.b;

import android.app.Activity;
import android.content.Context;
import android.widget.EditText;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cu implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1714a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ cq f1715b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cu(cq cqVar, String str) {
        this.f1715b = cqVar;
        this.f1714a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean a2;
        EditText editText;
        boolean z;
        Context context;
        String str;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        a2 = this.f1715b.a(this.f1714a);
        if (!a2) {
            context5 = this.f1715b.c;
            ((Activity) context5).runOnUiThread(new cv(this));
            com.estrongs.android.a.t.a();
            return;
        }
        editText = this.f1715b.h;
        String trim = editText.getText().toString().trim();
        if (trim.length() == 0) {
            trim = com.estrongs.android.util.ak.c(this.f1714a);
        }
        z = this.f1715b.j;
        if (z) {
            context = this.f1715b.c;
            com.estrongs.android.pop.q a3 = com.estrongs.android.pop.q.a(context);
            str = this.f1715b.k;
            a3.a(str);
            context2 = this.f1715b.c;
            com.estrongs.android.pop.q.a(context2).a(this.f1714a, trim);
        } else {
            context4 = this.f1715b.c;
            com.estrongs.android.pop.q.a(context4).a(this.f1714a, trim);
        }
        com.estrongs.android.a.t.a();
        context3 = this.f1715b.c;
        ((Activity) context3).runOnUiThread(new cw(this));
    }
}
