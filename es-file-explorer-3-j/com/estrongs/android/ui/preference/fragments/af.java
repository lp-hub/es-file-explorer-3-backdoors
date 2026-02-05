package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PrivacyActivity;
import com.estrongs.android.pop.utils.bs;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class af extends com.estrongs.android.pop.esclasses.g {
    @SuppressLint({"NewApi"})
    private void a() {
        PreferenceCategory preferenceCategory = (PreferenceCategory) findPreference("preference_tools_settings");
        if (com.estrongs.android.pop.m.M) {
            try {
                preferenceCategory.removePreference(findPreference("gesture_settings"));
            } catch (Exception e) {
            }
        }
        if (com.estrongs.android.pop.m.O) {
            try {
                preferenceCategory.removePreference(findPreference("downloader_settings"));
            } catch (Exception e2) {
            }
        }
        if (!com.estrongs.android.pop.m.f) {
            try {
                preferenceCategory.removePreference(findPreference("appmanager_preference"));
            } catch (Exception e3) {
            }
        }
        if (com.estrongs.android.pop.m.i) {
            try {
                ((PreferenceCategory) findPreference("preference_upgrade_settings_text_category")).removePreference(findPreference("preference_rate"));
            } catch (Exception e4) {
            }
        }
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        PreferenceCategory preferenceCategory;
        super.onCreate(bundle);
        addPreferencesFromResource(C0000R.xml.pref_headers);
        Preference findPreference = findPreference("preference_help");
        if (com.estrongs.android.pop.m.g) {
            PreferenceCategory preferenceCategory2 = (PreferenceCategory) findPreference("preference_upgrade_settings_text_category");
            if (preferenceCategory2 != null && findPreference != null) {
                preferenceCategory2.removePreference(findPreference);
            }
        } else {
            findPreference.setOnPreferenceClickListener(new ag(this));
        }
        Preference findPreference2 = findPreference("preference_privacy");
        if (!bs.a() && (preferenceCategory = (PreferenceCategory) findPreference("preference_upgrade_settings_text_category")) != null && findPreference2 != null) {
            preferenceCategory.removePreference(findPreference2);
        }
        onPreferenceTreeClick(getPreferenceScreen(), findPreference("preference_display_settings_category"));
        a();
    }

    @Override // android.preference.PreferenceFragment
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        boolean onPreferenceTreeClick = super.onPreferenceTreeClick(preferenceScreen, preference);
        if (!onPreferenceTreeClick && !preference.getKey().equals("preference_help")) {
            if (preference.getKey().equals("preference_rate")) {
                com.estrongs.android.pop.utils.y.a(getActivity(), "com.estrongs.android.pop", "pname");
            } else if (preference.getKey().equals("preference_privacy")) {
                if (com.estrongs.android.util.ai.c(getActivity())) {
                    Intent intent = new Intent();
                    intent.setClassName(getActivity().getPackageName(), PrivacyActivity.class.getName());
                    getActivity().startActivity(intent);
                } else {
                    com.estrongs.android.ui.b.aq aqVar = new com.estrongs.android.ui.b.aq(getActivity());
                    aqVar.a(getText(C0000R.string.message_alert)).b(getText(C0000R.string.streaming_network_error)).a(C0000R.string.confirm_ok, new ai(this));
                    aqVar.b();
                }
            }
        }
        return onPreferenceTreeClick;
    }
}
