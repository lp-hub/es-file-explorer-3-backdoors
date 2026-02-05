package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.os.Handler;

/* loaded from: classes.dex */
public class ax {
    private static Object c = new Object();

    /* renamed from: a, reason: collision with root package name */
    private Context f2300a;

    /* renamed from: b, reason: collision with root package name */
    private Handler f2301b;

    public ax(Context context) {
        this.f2300a = context;
    }

    public void a() {
        new Thread(new ay(this)).start();
    }

    public void a(Handler handler) {
        this.f2301b = handler;
    }
}
