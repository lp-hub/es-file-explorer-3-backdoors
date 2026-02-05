package com.estrongs.android.ui.b;

import android.app.Activity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fq extends com.estrongs.android.ui.notification.e {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ew f1827a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fq(ew ewVar, Activity activity, CharSequence charSequence, com.estrongs.a.a aVar) {
        super(activity, charSequence, aVar);
        this.f1827a = ewVar;
    }

    @Override // com.estrongs.android.ui.notification.e
    protected void a(com.estrongs.a.a aVar) {
        ew.e.remove(Long.valueOf(aVar.getTaskId()));
    }

    @Override // com.estrongs.android.ui.notification.e
    protected void b(com.estrongs.a.a aVar) {
        ew.e.remove(Long.valueOf(aVar.getTaskId()));
    }
}
