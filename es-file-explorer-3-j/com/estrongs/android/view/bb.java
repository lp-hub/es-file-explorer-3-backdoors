package com.estrongs.android.view;

import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bb implements com.estrongs.android.a.d {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ar f2761a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bb(ar arVar) {
        this.f2761a = arVar;
    }

    @Override // com.estrongs.android.a.d
    public void a(String str, String str2, Object obj) {
        com.estrongs.fs.g j = this.f2761a.A.j(com.estrongs.android.util.ak.a(com.estrongs.android.util.ak.B(obj.toString()), str, str2));
        if (j == null) {
            com.estrongs.android.pop.utils.a.a(this.f2761a.ad, C0000R.string.auth_failed);
        } else {
            this.f2761a.a(j);
        }
    }
}
