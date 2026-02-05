package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.preference.Preference;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class WindowPreferenceFragment extends com.estrongs.android.pop.esclasses.g {

    /* renamed from: a, reason: collision with root package name */
    private Preference f2434a;

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    @SuppressLint({"NewApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(C0000R.xml.pref_window);
        this.f2434a = findPreference("default_window");
        this.f2434a.setOnPreferenceClickListener(new au(this));
    }
}
