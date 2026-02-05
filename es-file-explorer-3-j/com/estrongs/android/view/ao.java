package com.estrongs.android.view;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ao implements com.estrongs.android.widget.f {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ an f2746a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ao(an anVar) {
        this.f2746a = anVar;
    }

    @Override // com.estrongs.android.widget.f
    public void a() {
        if (this.f2746a.p == null || this.f2746a.p.e()) {
            return;
        }
        this.f2746a.p.b();
        if (this.f2746a.A()) {
            this.f2746a.d(false);
        }
    }

    @Override // com.estrongs.android.widget.f
    public void b() {
    }
}
