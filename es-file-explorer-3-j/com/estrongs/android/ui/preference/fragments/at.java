package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import com.estrongs.android.ui.b.ga;

/* loaded from: classes.dex */
class at implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ UpgradePreferenceFragment f2456a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public at(UpgradePreferenceFragment upgradePreferenceFragment) {
        this.f2456a = upgradePreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        new ga(this.f2456a.getActivity(), 1, "http://update.estrongs.com/up?id=1").a();
        return true;
    }
}
