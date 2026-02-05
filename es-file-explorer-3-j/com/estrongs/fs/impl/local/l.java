package com.estrongs.fs.impl.local;

import android.net.LocalSocket;

/* loaded from: classes.dex */
class l {

    /* renamed from: a, reason: collision with root package name */
    private String f3104a;

    /* renamed from: b, reason: collision with root package name */
    private LocalSocket f3105b = null;
    private boolean c = false;
    private boolean d = false;
    private int e = 0;
    private byte[] f = null;
    private int g = 0;
    private int h = -1;
    private long i = 0;
    private int j = 0;
    private long k = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(String str) {
        this.f3104a = "";
        this.f3104a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        this.h = i;
        synchronized (this) {
            notify();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j) {
        this.k = j;
        synchronized (this) {
            notify();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.d = z;
        synchronized (this) {
            notify();
        }
    }
}
