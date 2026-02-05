package com.estrongs.android.ui.preference;

import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.view.z;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
class l implements com.estrongs.android.util.f {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2500a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ k f2501b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(k kVar, String str) {
        this.f2501b = kVar;
        this.f2500a = str;
    }

    @Override // com.estrongs.android.util.f
    public void a(String str, String str2, int i) {
        if (this.f2500a.equals(str)) {
            return;
        }
        boolean z = true;
        try {
            if (Charset.forName(str) == null) {
                z = false;
            }
        } catch (Exception e) {
            z = false;
        }
        if (!z) {
            z.a(this.f2501b.f2499a, C0000R.string.preference_ftpsvr_charset_not_support_toast, 0).show();
            return;
        }
        com.estrongs.android.pop.q.a(this.f2501b.f2499a).t(str);
        com.estrongs.android.ftp.a.f = str;
        this.f2501b.f2499a.d.setSummary(((Object) this.f2501b.f2499a.getText(C0000R.string.preference_ftpsvr_charset_change_summary)) + str);
    }
}
