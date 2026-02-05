package com.estrongs.fs.impl.local;

/* loaded from: classes.dex */
public class m {

    /* renamed from: a, reason: collision with root package name */
    public int f3106a;

    /* renamed from: b, reason: collision with root package name */
    public int f3107b;
    public int c;
    private String d;
    private boolean e;

    private m(String str) {
        this.d = "";
        this.f3106a = -1;
        this.f3107b = -1;
        this.c = -1;
        this.e = false;
        this.d = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ m(String str, i iVar) {
        this(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2, int i3) {
        this.f3106a = i;
        this.f3107b = i2;
        this.c = i3;
        synchronized (this) {
            notify();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        this.e = z;
        synchronized (this) {
            notify();
        }
    }
}
