package com.estrongs.android.pop.app;

import android.widget.Button;

/* loaded from: classes.dex */
class di implements eh {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.g.e f658a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ dh f659b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public di(dh dhVar, com.estrongs.android.ui.g.e eVar) {
        this.f659b = dhVar;
        this.f658a = eVar;
    }

    @Override // com.estrongs.android.pop.app.eh
    public void a(com.estrongs.android.pop.app.a.ag agVar) {
        Button button;
        com.estrongs.android.ui.view.v vVar;
        Button button2;
        this.f658a.g();
        try {
            if (agVar.a() == null) {
                button2 = this.f659b.f657a.x;
                button2.setText(agVar.b());
            } else {
                button = this.f659b.f657a.x;
                button.setText(agVar.a());
            }
            vVar = this.f659b.f657a.U;
            vVar.a(agVar);
            this.f659b.f657a.e();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
