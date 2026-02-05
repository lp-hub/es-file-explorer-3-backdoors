package com.estrongs.android.ui.view;

import android.app.Activity;
import android.os.Handler;
import android.widget.EditText;
import com.estrongs.android.view.cr;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f2636a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(b bVar) {
        this.f2636a = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        boolean e;
        EditText editText;
        String str2;
        boolean z;
        Activity activity;
        String str3;
        Activity activity2;
        String str4;
        cr crVar;
        Activity activity3;
        Activity activity4;
        String str5;
        String str6;
        boolean e2;
        Handler handler;
        b bVar = this.f2636a;
        str = this.f2636a.C;
        e = bVar.e(str);
        if (!e) {
            e2 = this.f2636a.e();
            if (!e2) {
                handler = this.f2636a.z;
                handler.post(new j(this));
                com.estrongs.android.a.t.a();
                return;
            }
        }
        editText = this.f2636a.j;
        String trim = editText.getText().toString().trim();
        if (trim.length() == 0) {
            str6 = this.f2636a.C;
            trim = com.estrongs.android.util.ak.c(str6);
        }
        b bVar2 = this.f2636a;
        str2 = this.f2636a.C;
        bVar2.c(str2);
        z = this.f2636a.q;
        if (z) {
            activity = this.f2636a.ad;
            com.estrongs.android.pop.q a2 = com.estrongs.android.pop.q.a(activity);
            str3 = this.f2636a.x;
            a2.a(str3);
            activity2 = this.f2636a.ad;
            com.estrongs.android.pop.q a3 = com.estrongs.android.pop.q.a(activity2);
            str4 = this.f2636a.C;
            a3.a(str4, trim);
        } else {
            activity4 = this.f2636a.ad;
            com.estrongs.android.pop.q a4 = com.estrongs.android.pop.q.a(activity4);
            str5 = this.f2636a.C;
            a4.a(str5, trim);
        }
        com.estrongs.android.a.t.a();
        crVar = this.f2636a.ag;
        if (crVar != null) {
            activity3 = this.f2636a.ad;
            activity3.runOnUiThread(new k(this));
        }
    }
}
