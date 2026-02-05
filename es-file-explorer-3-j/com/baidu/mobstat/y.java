package com.baidu.mobstat;

import android.content.Context;
import android.support.v4.app.Fragment;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class y implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f174a;

    /* renamed from: b, reason: collision with root package name */
    private long f175b;
    private long c;
    private WeakReference<Context> d;
    private WeakReference<Fragment> e;
    private WeakReference<Object> f;
    private int g;

    public y(s sVar, long j, long j2, Context context, Fragment fragment, Object obj, int i) {
        this.f174a = sVar;
        this.g = 1;
        this.f175b = j;
        this.c = j2;
        this.d = new WeakReference<>(context);
        this.e = new WeakReference<>(fragment);
        this.f = new WeakReference<>(obj);
        this.g = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        q qVar;
        q qVar2;
        q qVar3;
        if (this.c - this.f175b < this.f174a.a() || this.f175b <= 0) {
            return;
        }
        if (this.d.get() == null && this.e.get() == null && this.f.get() == null) {
            return;
        }
        qVar = this.f174a.j;
        qVar.b(this.f175b);
        qVar2 = this.f174a.j;
        String jSONObject = qVar2.c().toString();
        com.baidu.mobstat.a.c.a("stat", "new session:" + jSONObject);
        b.a().c(jSONObject);
        Context context = null;
        if (this.g == 1) {
            b.a().b(this.d.get());
        } else if (this.g == 2) {
            b.a().b(this.e.get().getActivity());
        } else if (this.g == 3) {
            Context a2 = s.a(this.f.get());
            b.a().b(a2);
            context = a2;
        }
        qVar3 = this.f174a.j;
        qVar3.b();
        if (this.g == 1) {
            this.f174a.a(this.d.get());
        } else if (this.g == 2) {
            this.f174a.a((Context) this.e.get().getActivity());
        } else {
            this.f174a.a(context);
        }
        l.a().b(context);
    }
}
