package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import com.estrongs.android.pop.C0000R;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class DownloadPreferenceFragment extends com.estrongs.android.pop.esclasses.g {

    /* renamed from: a, reason: collision with root package name */
    private CheckBoxPreference f2429a;

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(C0000R.xml.pref_download);
        this.f2429a = (CheckBoxPreference) findPreference("browser_downloader_disabled");
        this.f2429a.setOnPreferenceChangeListener(new ae(this));
    }
}
