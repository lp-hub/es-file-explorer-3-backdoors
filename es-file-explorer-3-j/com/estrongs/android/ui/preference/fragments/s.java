package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;

/* loaded from: classes.dex */
class s implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CleanPreferenceFragment f2485a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(CleanPreferenceFragment cleanPreferenceFragment) {
        this.f2485a = cleanPreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        this.f2485a.a();
        return true;
    }
}
