package com.estrongs.android.ui.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bq implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1672a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ long f1673b;
    final /* synthetic */ bk c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bq(bk bkVar, String str, long j) {
        this.c = bkVar;
        this.f1672a = str;
        this.f1673b = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.c.f1664b.setText(this.f1672a);
        this.c.a(this.c.f1663a, this.f1673b);
    }
}
