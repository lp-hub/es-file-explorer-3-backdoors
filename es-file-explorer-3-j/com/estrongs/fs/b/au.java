package com.estrongs.fs.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class au implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ at f2988a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public au(at atVar) {
        this.f2988a = atVar;
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        if (i2 == 4) {
            try {
                String a2 = this.f2988a.a();
                if (com.estrongs.android.util.aw.a((CharSequence) a2)) {
                    return;
                }
                this.f2988a.f2986a.runOnUiThread(new av(this, a2));
                return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        if (i2 == 5) {
            String a3 = this.f2988a.a(aVar.getTaskResult());
            if (a3 == null) {
                a3 = this.f2988a.b();
            }
            if (com.estrongs.android.util.aw.a((CharSequence) a3)) {
                return;
            }
            if (aVar.getTaskResult().f229a == 9) {
                this.f2988a.f2986a.runOnUiThread(new aw(this, aVar));
            } else {
                this.f2988a.f2986a.runOnUiThread(new ax(this, a3));
            }
        }
    }
}
