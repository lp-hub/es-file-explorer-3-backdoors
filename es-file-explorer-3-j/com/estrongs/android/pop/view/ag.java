package com.estrongs.android.pop.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ag implements com.estrongs.android.ui.b.by {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean f1300a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1301b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(FileExplorerActivity fileExplorerActivity, boolean z) {
        this.f1301b = fileExplorerActivity;
        this.f1300a = z;
    }

    @Override // com.estrongs.android.ui.b.by
    public void a(String str) {
        this.f1301b.a(this.f1301b.u(), str, this.f1300a);
    }
}
