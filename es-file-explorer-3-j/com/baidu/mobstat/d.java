package com.baidu.mobstat;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d {
    private static Handler d;

    /* renamed from: a, reason: collision with root package name */
    HashMap<String, i> f137a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    public final String f138b = "$|$";
    private static HandlerThread c = new HandlerThread("EventHandleThread");
    private static d e = new d();

    private d() {
        c.start();
        c.setPriority(10);
        d = new Handler(c.getLooper());
    }

    public static d a() {
        return e;
    }

    public String a(String str, String str2) {
        return "__sdk_" + str + "$|$" + str2;
    }

    public void a(Context context, String str, String str2, int i, long j) {
        d.post(new e(this, str, str2, i, j, context));
    }

    public void a(Context context, String str, String str2, long j) {
        d.post(new f(this, j, str, str2));
    }

    public void b(Context context, String str, String str2, long j) {
        d.post(new g(this, str, str2, j, context));
    }

    public void c(Context context, String str, String str2, long j) {
        d.post(new h(this, j, str, str2, context));
    }
}
