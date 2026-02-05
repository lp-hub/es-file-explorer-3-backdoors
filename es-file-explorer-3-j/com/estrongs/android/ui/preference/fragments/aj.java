package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;

/* loaded from: classes.dex */
class aj implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PasswordPreferenceFragment f2444a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aj(PasswordPreferenceFragment passwordPreferenceFragment) {
        this.f2444a = passwordPreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        Preference preference2;
        if (!((Boolean) obj).booleanValue()) {
            this.f2444a.b(109);
            return false;
        }
        String J = com.estrongs.android.pop.q.a(this.f2444a.getActivity()).J();
        if (J == null || J.length() == 0) {
            this.f2444a.a(108);
            return false;
        }
        preference2 = this.f2444a.f2431b;
        preference2.setEnabled(true);
        return true;
    }
}
