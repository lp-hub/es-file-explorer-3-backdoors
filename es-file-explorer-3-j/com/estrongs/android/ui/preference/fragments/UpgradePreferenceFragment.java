package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class UpgradePreferenceFragment extends com.estrongs.android.pop.esclasses.g {

    /* renamed from: a, reason: collision with root package name */
    private CheckBoxPreference f2432a;

    /* renamed from: b, reason: collision with root package name */
    private Preference f2433b;
    private CheckBoxPreference c;

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    @SuppressLint({"NewApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(C0000R.xml.pref_upgrade);
        this.f2433b = findPreference("upgrade_check");
        this.f2433b.setOnPreferenceClickListener(new at(this));
        if (com.estrongs.android.pop.m.t) {
            PreferenceScreen preferenceScreen = (PreferenceScreen) findPreference("update_preference");
            this.c = (CheckBoxPreference) findPreference("upgrade_auto_check");
            if (preferenceScreen != null && this.c != null) {
                preferenceScreen.removePreference(this.c);
            }
        }
        this.f2432a = (CheckBoxPreference) findPreference("send_statistics");
        if (this.f2432a != null && "CN".equalsIgnoreCase(com.estrongs.android.pop.esclasses.c.f1130a) && com.estrongs.android.pop.m.u) {
            this.f2432a.setTitle("统计");
            this.f2432a.setSummary("发送统计数据");
            return;
        }
        PreferenceScreen preferenceScreen2 = getPreferenceScreen();
        if (preferenceScreen2 == null || this.f2432a == null) {
            return;
        }
        preferenceScreen2.removePreference(this.f2432a);
    }
}
