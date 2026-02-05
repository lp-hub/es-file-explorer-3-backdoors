package com.estrongs.android.pop.app;

import android.app.Activity;

/* loaded from: classes.dex */
class t implements com.estrongs.android.ui.pcs.v {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ s f1082a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(s sVar) {
        this.f1082a = sVar;
    }

    @Override // com.estrongs.android.ui.pcs.v
    public void a(boolean z, String str, String str2) {
        String str3;
        if (!z || com.estrongs.android.util.aw.a((CharSequence) str2)) {
            return;
        }
        DownloaderActivity downloaderActivity = this.f1082a.f1081b;
        str3 = this.f1082a.f1081b.f341a;
        DownloaderActivity.a((Activity) downloaderActivity, str3, true);
    }
}
