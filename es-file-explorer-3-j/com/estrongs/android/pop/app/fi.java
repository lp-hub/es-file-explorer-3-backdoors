package com.estrongs.android.pop.app;

import android.preference.Preference;

/* loaded from: classes.dex */
class fi implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f804a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fi(PopPreferenceActivity popPreferenceActivity) {
        this.f804a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        new com.estrongs.android.ui.b.ga(this.f804a, 1, "http://update.estrongs.com/up?id=1").a();
        return true;
    }
}
