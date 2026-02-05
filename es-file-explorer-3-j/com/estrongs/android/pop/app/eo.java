package com.estrongs.android.pop.app;

import android.preference.Preference;

/* loaded from: classes.dex */
class eo implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f781a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eo(PopPreferenceActivity popPreferenceActivity) {
        this.f781a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        com.estrongs.android.util.o.a(this.f781a);
        return true;
    }
}
