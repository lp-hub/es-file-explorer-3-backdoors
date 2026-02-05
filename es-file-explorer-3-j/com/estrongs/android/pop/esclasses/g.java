package com.estrongs.android.pop.esclasses;

import android.annotation.SuppressLint;
import android.preference.PreferenceFragment;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class g extends PreferenceFragment {
    @Override // android.preference.PreferenceFragment
    public void addPreferencesFromResource(int i) {
        super.addPreferencesFromResource(i);
        new h(getActivity()).a(i, getPreferenceScreen());
    }
}
