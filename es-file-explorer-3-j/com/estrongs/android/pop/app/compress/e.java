package com.estrongs.android.pop.app.compress;

import android.widget.Button;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class e implements com.estrongs.android.util.f {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f606a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar) {
        this.f606a = dVar;
    }

    @Override // com.estrongs.android.util.f
    public void a(String str, String str2, int i) {
        String str3;
        str3 = this.f606a.f605b.i;
        if (str3.equals(str)) {
            return;
        }
        this.f606a.f605b.i = str;
        ((Button) this.f606a.f604a.findViewById(C0000R.id.btnCharset)).setText(str2);
    }
}
