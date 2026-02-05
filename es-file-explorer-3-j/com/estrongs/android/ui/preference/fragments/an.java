package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;

/* loaded from: classes.dex */
class an implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PasswordPreferenceFragment f2449a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public an(PasswordPreferenceFragment passwordPreferenceFragment) {
        this.f2449a = passwordPreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        this.f2449a.a();
        return true;
    }
}
