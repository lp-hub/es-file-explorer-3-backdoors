package com.estrongs.android.pop.esclasses;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class a extends com.estrongs.android.pop.app.a {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ESAbsToolbarActivity f1127a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(ESAbsToolbarActivity eSAbsToolbarActivity, View.OnTouchListener onTouchListener) {
        super(onTouchListener);
        this.f1127a = eSAbsToolbarActivity;
    }

    @Override // com.estrongs.android.pop.app.a
    public boolean a() {
        return this.f1127a.e();
    }

    @Override // com.estrongs.android.pop.app.a
    public void b() {
        if (this.f1127a.f1119a) {
            this.f1127a.g();
        } else {
            this.f1127a.b(true);
        }
    }

    @Override // com.estrongs.android.pop.app.a
    public void c() {
        if (this.f1127a.f1119a) {
            this.f1127a.b(false);
        }
    }

    @Override // com.estrongs.android.pop.app.a
    public boolean d() {
        return this.f1127a.f();
    }
}
