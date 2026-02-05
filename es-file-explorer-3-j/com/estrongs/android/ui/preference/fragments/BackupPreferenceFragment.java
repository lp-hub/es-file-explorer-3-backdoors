package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import com.estrongs.android.pop.C0000R;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class BackupPreferenceFragment extends com.estrongs.android.pop.esclasses.g {

    /* renamed from: a, reason: collision with root package name */
    private Preference f2421a;

    /* renamed from: b, reason: collision with root package name */
    private Preference f2422b;

    private void a() {
        this.f2421a = findPreference("backupsettings");
        this.f2421a.setOnPreferenceClickListener(new d(this));
        this.f2422b = findPreference("restoresettings");
        this.f2422b.setOnPreferenceClickListener(new k(this));
        CheckBoxPreference checkBoxPreference = (CheckBoxPreference) findPreference("enableRemoteSynchronizer");
        if (checkBoxPreference != null) {
            checkBoxPreference.setOnPreferenceChangeListener(new r(this));
        }
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(C0000R.xml.pref_backup);
        a();
    }
}
