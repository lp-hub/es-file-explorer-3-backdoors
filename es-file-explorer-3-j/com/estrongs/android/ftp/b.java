package com.estrongs.android.ftp;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f311a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f311a = aVar;
    }

    /* JADX WARN: Incorrect condition in loop: B:7:0x001a */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        Object obj;
        long j;
        long j2;
        boolean z;
        Object obj2;
        long j3;
        long j4;
        long j5;
        long j6;
        obj = this.f311a.r;
        synchronized (obj) {
            j = this.f311a.u;
            j2 = this.f311a.v;
        }
        while (!z && this.f311a.e) {
            try {
                Thread.sleep(1000L);
            } catch (Exception e) {
            }
            obj2 = this.f311a.r;
            synchronized (obj2) {
                j3 = this.f311a.u;
                j4 = j3 - j;
                j5 = this.f311a.v;
                j6 = j5 - j2;
                j = this.f311a.u;
                j2 = this.f311a.v;
            }
            if (this.f311a.j != null) {
                this.f311a.j.a(j4, j6);
            }
        }
    }
}
