package com.estrongs.fs.impl.pcs;

import com.estrongs.android.util.ak;
import com.estrongs.fs.l;
import com.estrongs.fs.m;

/* loaded from: classes.dex */
public class b extends m {

    /* renamed from: a, reason: collision with root package name */
    private static b f3162a;

    private b() {
        super(null, l.O, "网络硬盘");
        b();
        this.lastModified = System.currentTimeMillis();
    }

    public static b a() {
        if (f3162a == null) {
            f3162a = new b();
        }
        f3162a.b();
        return f3162a;
    }

    private void b() {
        this.path = ak.g() + "/files/";
        this.absolutePath = this.path;
    }
}
