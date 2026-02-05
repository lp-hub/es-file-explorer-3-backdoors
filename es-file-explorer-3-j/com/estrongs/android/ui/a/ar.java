package com.estrongs.android.ui.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ar implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1505a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(s sVar) {
        this.f1505a = sVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1505a.notifyDataSetChanged();
    }
}
