package com.baidu.mobstat;

import android.app.Activity;
import android.content.Context;
import android.support.v4.app.Fragment;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class x implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f172a;

    /* renamed from: b, reason: collision with root package name */
    private long f173b;
    private WeakReference<Context> c;
    private WeakReference<Fragment> d;
    private WeakReference<Object> e;
    private long f;
    private WeakReference<Context> g;
    private WeakReference<Fragment> h;
    private WeakReference<Object> i;
    private int j;
    private String k;

    public x(s sVar, long j, Context context, Fragment fragment, long j2, Context context2, Fragment fragment2, int i, String str, Object obj, Object obj2) {
        this.f172a = sVar;
        this.k = null;
        this.f173b = j;
        if (context != null) {
            this.c = new WeakReference<>(context);
        }
        this.f = j2;
        if (context2 != null) {
            this.g = new WeakReference<>(context2);
        }
        if (fragment != null) {
            this.d = new WeakReference<>(fragment);
        }
        if (fragment2 != null) {
            this.h = new WeakReference<>(fragment2);
        }
        if (obj != null) {
            this.i = new WeakReference<>(obj);
        }
        if (obj2 != null) {
            this.e = new WeakReference<>(obj2);
        }
        this.j = i;
        this.k = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        q qVar;
        q qVar2;
        q qVar3;
        if (this.j == 1) {
            if (this.c.get() != this.g.get()) {
                if (this.k != null) {
                    com.baidu.mobstat.a.c.c("stat", "onPageStart() 或 onPageEnd()安放错误  || onPageStart() or onPageEnd() install error.");
                    return;
                } else {
                    com.baidu.mobstat.a.c.c("stat", "onPause() 或 onResume()安放错误  ||  onPause() or onResume() install error.");
                    return;
                }
            }
            long j = this.f173b - this.f;
            Activity activity = (Activity) this.c.get();
            if (activity == null) {
                com.baidu.mobstat.a.c.c("stat", "onPause,WeakReference is already been released");
                return;
            }
            StringBuilder sb = new StringBuilder();
            if (this.k != null) {
                sb.append(this.k);
            } else {
                sb.append(activity.getComponentName().getShortClassName());
                if (sb.charAt(0) == '.') {
                    sb.deleteCharAt(0);
                }
            }
            com.baidu.mobstat.a.c.a("stat", "new page view, page name = " + sb.toString() + ",stay time = " + j + "(ms)");
            qVar3 = this.f172a.j;
            qVar3.a(sb.toString(), j, this.f);
            this.f172a.c(this.c.get(), this.f173b);
            return;
        }
        if (this.j == 2) {
            if (this.d.get() != this.h.get()) {
                com.baidu.mobstat.a.c.c("stat", " Fragment onPause() 或 onResume()安放错误||onPause() or onResume() install error.");
                return;
            }
            long j2 = this.f173b - this.f;
            Fragment fragment = this.d.get();
            if (fragment == null) {
                com.baidu.mobstat.a.c.c("stat", "onPause,WeakReference is already been released");
                return;
            }
            String str = fragment.getClass().getName().toString();
            String substring = str.substring(str.lastIndexOf(".") + 1);
            com.baidu.mobstat.a.c.a("stat", "Fragment new page view, page name = " + str.toString() + ",stay time = " + j2 + "(ms)");
            qVar2 = this.f172a.j;
            qVar2.a(substring, j2, this.f);
            this.f172a.c(this.d.get().getActivity(), this.f173b);
            return;
        }
        if (this.j == 3) {
            if (this.e.get() != this.i.get()) {
                com.baidu.mobstat.a.c.c("stat", " Fragment onPause() 或 onResume()安放错误||onPause() or onResume() install error.");
                return;
            }
            long j3 = this.f173b - this.f;
            Object obj = this.e.get();
            if (obj == null) {
                com.baidu.mobstat.a.c.c("stat", "onPause,WeakReference is already been released");
                return;
            }
            Context a2 = s.a(obj);
            String str2 = obj.getClass().getName().toString();
            String substring2 = str2.substring(str2.lastIndexOf(".") + 1);
            com.baidu.mobstat.a.c.a("stat", "android.app.Fragment new page view, page name = " + str2.toString() + ",stay time = " + j3 + "(ms)");
            qVar = this.f172a.j;
            qVar.a(substring2, j3, this.f);
            this.f172a.c(a2, this.f173b);
        }
    }
}
