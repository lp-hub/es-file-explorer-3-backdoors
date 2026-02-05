package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.preference.CheckBoxPreference;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.utils.bs;
import com.estrongs.android.ui.preference.ListPreference;
import java.util.Arrays;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class DisplayPreferenceFragment extends com.estrongs.android.pop.esclasses.g {

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.android.pop.q f2427a;

    /* renamed from: b, reason: collision with root package name */
    private CheckBoxPreference f2428b;
    private CheckBoxPreference c;
    private Handler d = new Handler();

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(C0000R.xml.pref_display);
        this.f2427a = com.estrongs.android.pop.q.a(getActivity());
        this.f2427a.am();
        this.f2427a.ak();
        CheckBoxPreference checkBoxPreference = (CheckBoxPreference) findPreference("show_pcs_drive");
        if (checkBoxPreference != null) {
            if (bs.a() && com.estrongs.android.pop.m.I) {
                checkBoxPreference.setOnPreferenceChangeListener(new aa(this));
            } else {
                getPreferenceScreen().removePreference(checkBoxPreference);
            }
        }
        CheckBoxPreference checkBoxPreference2 = (CheckBoxPreference) findPreference("hidden_file");
        if (checkBoxPreference2 != null) {
            checkBoxPreference2.setOnPreferenceChangeListener(new ab(this));
        }
        this.f2428b = (CheckBoxPreference) findPreference("show_select_button");
        this.f2428b.setChecked(this.f2427a.ak());
        this.c = (CheckBoxPreference) findPreference("show_windows_button");
        this.c.setChecked(this.f2427a.am());
        ((CheckBoxPreference) findPreference("show_disk_usage")).setChecked(this.f2427a.P());
        ListPreference listPreference = (ListPreference) findPreference("language_setting");
        String[] stringArray = getResources().getStringArray(C0000R.array.preference_language_setting_entries);
        String[] strArr = new String[stringArray.length];
        strArr[0] = getString(C0000R.string.preference_language_auto_select);
        for (int i = 1; i < stringArray.length; i++) {
            strArr[i] = stringArray[i];
        }
        listPreference.a(strArr);
        int indexOf = Arrays.asList(getResources().getStringArray(C0000R.array.preference_language_setting_values)).indexOf(com.estrongs.android.pop.q.a(getActivity()).E());
        if (indexOf >= 0) {
            listPreference.setSummary(strArr[indexOf]);
        }
        listPreference.setOnPreferenceChangeListener(new ac(this));
        if (com.estrongs.android.pop.m.L) {
            try {
                getPreferenceScreen().removePreference(listPreference);
            } catch (Exception e) {
            }
        }
    }
}
