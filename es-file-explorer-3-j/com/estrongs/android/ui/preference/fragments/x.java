package com.estrongs.android.ui.preference.fragments;

import android.preference.EditTextPreference;
import android.preference.Preference;

/* loaded from: classes.dex */
class x implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ DirectoryPreferenceFragment f2490a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(DirectoryPreferenceFragment directoryPreferenceFragment) {
        this.f2490a = directoryPreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        boolean a2;
        EditTextPreference editTextPreference;
        EditTextPreference editTextPreference2;
        com.estrongs.android.pop.q qVar;
        String obj2 = obj.toString();
        if (obj2.trim().equals("")) {
            this.f2490a.a();
            return false;
        }
        a2 = this.f2490a.a(obj2);
        if (obj2.charAt(obj2.length() - 1) != '/') {
            obj2 = obj2 + "/";
        }
        this.f2490a.e = obj2;
        this.f2490a.f = 3;
        if (!a2) {
            this.f2490a.a();
            return false;
        }
        editTextPreference = this.f2490a.d;
        editTextPreference.setSummary(obj2);
        editTextPreference2 = this.f2490a.d;
        editTextPreference2.setText(obj2);
        qVar = this.f2490a.f2425a;
        qVar.k(obj2);
        return true;
    }
}
