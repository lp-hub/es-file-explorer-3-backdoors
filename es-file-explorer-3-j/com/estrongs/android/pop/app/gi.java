package com.estrongs.android.pop.app;

import android.preference.Preference;

/* loaded from: classes.dex */
class gi implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f843a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gi(PopPreferenceActivity popPreferenceActivity) {
        this.f843a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        com.estrongs.android.pop.utils.y.a(this.f843a, "com.estrongs.android.pop", "pname");
        return true;
    }
}
