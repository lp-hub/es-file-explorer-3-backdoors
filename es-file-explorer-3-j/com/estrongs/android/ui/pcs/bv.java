package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bv implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bt f2335a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bv(bt btVar) {
        this.f2335a = btVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        String str;
        Context context2;
        context = this.f2335a.f2333b;
        str = this.f2335a.l;
        d dVar = new d(context, str, null);
        dVar.a(this.f2335a);
        dVar.c();
        dVar.a();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("http://wappass.baidu.com/passport/?getpass"));
        try {
            context2 = this.f2335a.f2333b;
            context2.startActivity(intent);
        } catch (Exception e) {
        }
    }
}
