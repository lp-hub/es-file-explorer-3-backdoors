package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class t implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CleanPreferenceFragment f2486a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(CleanPreferenceFragment cleanPreferenceFragment) {
        this.f2486a = cleanPreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        com.estrongs.android.pop.view.utils.n.a(this.f2486a.getActivity());
        com.estrongs.android.ui.view.z.a(this.f2486a.getActivity(), C0000R.string.clean_prefer_success, 0).show();
        return true;
    }
}
