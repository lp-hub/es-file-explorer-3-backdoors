package com.estrongs.android.ui.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bg implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1519a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bg(s sVar) {
        this.f1519a = sVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1519a.notifyDataSetChanged();
    }
}
