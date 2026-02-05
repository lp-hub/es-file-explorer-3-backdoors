package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class RecyclePreferenceFragment extends com.estrongs.android.pop.esclasses.g {
    private void a() {
        ((CheckBoxPreference) findPreference("enable_recycle")).setChecked(com.estrongs.android.pop.q.a(getActivity()).aD());
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    @SuppressLint({"NewApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(C0000R.xml.recycle_preference);
        a();
    }
}
