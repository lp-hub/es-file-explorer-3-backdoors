package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import com.estrongs.android.ui.b.av;

/* loaded from: classes.dex */
class au implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ WindowPreferenceFragment f2457a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public au(WindowPreferenceFragment windowPreferenceFragment) {
        this.f2457a = windowPreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        new av(this.f2457a.getActivity()).a();
        return true;
    }
}
