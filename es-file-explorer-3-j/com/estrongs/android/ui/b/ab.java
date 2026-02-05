package com.estrongs.android.ui.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ab implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1616a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ boolean f1617b;
    final /* synthetic */ y c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(y yVar, String str, boolean z) {
        this.c = yVar;
        this.f1616a = str;
        this.f1617b = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        ag agVar;
        ag agVar2;
        agVar = this.c.d;
        agVar.setMessage(this.f1616a);
        if (this.f1617b) {
            agVar2 = this.c.d;
            agVar2.setItemsEnable(true);
        }
    }
}
