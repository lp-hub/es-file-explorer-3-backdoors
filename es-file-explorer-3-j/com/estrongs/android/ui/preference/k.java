package com.estrongs.android.ui.preference;

import android.preference.Preference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FtpServerPreference f2499a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(FtpServerPreference ftpServerPreference) {
        this.f2499a = ftpServerPreference;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        String W = com.estrongs.android.pop.q.a(this.f2499a).W();
        com.estrongs.android.util.b bVar = new com.estrongs.android.util.b(this.f2499a, W, new l(this, W));
        bVar.f2690a = false;
        bVar.a();
        return true;
    }
}
