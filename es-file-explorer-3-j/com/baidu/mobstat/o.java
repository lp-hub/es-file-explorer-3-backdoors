package com.baidu.mobstat;

import android.content.Context;
import java.util.TimerTask;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o extends TimerTask {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f158a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ l f159b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(l lVar, Context context) {
        this.f159b = lVar;
        this.f158a = context;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public void run() {
        boolean z;
        com.baidu.mobstat.a.c.a("***********************welcome timer log");
        if (b.a().b()) {
            return;
        }
        com.baidu.mobstat.a.c.a("***********************welcome timer log start");
        l lVar = this.f159b;
        Context context = this.f158a;
        z = this.f159b.d;
        lVar.a(context, z);
    }
}
