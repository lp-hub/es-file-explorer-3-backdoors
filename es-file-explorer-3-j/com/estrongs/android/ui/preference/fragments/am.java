package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;

/* loaded from: classes.dex */
class am implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PasswordPreferenceFragment f2448a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(PasswordPreferenceFragment passwordPreferenceFragment) {
        this.f2448a = passwordPreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        Preference preference2;
        if (!((Boolean) obj).booleanValue()) {
            this.f2448a.b(114);
            return false;
        }
        String J = com.estrongs.android.pop.q.a(this.f2448a.getActivity()).J();
        if (J == null || J.length() == 0) {
            this.f2448a.a(113);
            return false;
        }
        preference2 = this.f2448a.f2431b;
        preference2.setEnabled(true);
        return true;
    }
}
