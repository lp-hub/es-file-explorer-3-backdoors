package com.estrongs.android.pop.view;

/* loaded from: classes.dex */
class a implements com.estrongs.android.view.br {

    /* renamed from: a, reason: collision with root package name */
    Runnable f1289a = null;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1290b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(FileExplorerActivity fileExplorerActivity) {
        this.f1290b = fileExplorerActivity;
    }

    @Override // com.estrongs.android.view.br
    public void a(String str, boolean z) {
        a(str, z, true);
    }

    @Override // com.estrongs.android.view.br
    public void a(String str, boolean z, boolean z2) {
        String str2;
        int a2 = com.estrongs.android.ui.d.e.a();
        com.estrongs.android.view.ar t = this.f1290b.t();
        if (str == null) {
            if (t != null) {
                str2 = t.c();
                if (str2 == null) {
                    str2 = t.v;
                }
            } else {
                str2 = str;
            }
            if (str2 == null) {
                str2 = "New";
            }
        } else {
            str2 = str;
        }
        this.f1290b.w = false;
        String[] strArr = new String[2];
        this.f1290b.a(str2, strArr);
        String str3 = strArr[0];
        String str4 = strArr[1];
        if (this.f1289a != null) {
            this.f1290b.h.removeCallbacks(this.f1289a);
        }
        this.f1289a = new b(this, str3, str2, str4, t, z, z2, a2);
        this.f1290b.h.post(this.f1289a);
    }
}
