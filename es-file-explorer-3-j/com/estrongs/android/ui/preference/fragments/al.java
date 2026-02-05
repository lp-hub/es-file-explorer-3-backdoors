package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;

/* loaded from: classes.dex */
class al implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PasswordPreferenceFragment f2447a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public al(PasswordPreferenceFragment passwordPreferenceFragment) {
        this.f2447a = passwordPreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        Preference preference2;
        if (!((Boolean) obj).booleanValue()) {
            this.f2447a.b(112);
            return false;
        }
        String J = com.estrongs.android.pop.q.a(this.f2447a.getActivity()).J();
        if (J == null || J.length() == 0) {
            this.f2447a.a(111);
            return false;
        }
        preference2 = this.f2447a.f2431b;
        preference2.setEnabled(true);
        return true;
    }
}
