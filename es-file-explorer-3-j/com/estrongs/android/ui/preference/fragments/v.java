package com.estrongs.android.ui.preference.fragments;

import android.preference.EditTextPreference;
import android.preference.Preference;

/* loaded from: classes.dex */
class v implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ DirectoryPreferenceFragment f2488a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(DirectoryPreferenceFragment directoryPreferenceFragment) {
        this.f2488a = directoryPreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        boolean a2;
        EditTextPreference editTextPreference;
        EditTextPreference editTextPreference2;
        com.estrongs.android.pop.q qVar;
        String obj2 = obj.toString();
        if (obj2.trim().equals("")) {
            this.f2488a.a();
            return false;
        }
        a2 = this.f2488a.a(obj2);
        if (obj2.charAt(obj2.length() - 1) != '/') {
            obj2 = obj2 + "/";
        }
        this.f2488a.e = obj2;
        this.f2488a.f = 0;
        if (!a2) {
            this.f2488a.a();
            return false;
        }
        editTextPreference = this.f2488a.f2426b;
        editTextPreference.setSummary(obj2);
        editTextPreference2 = this.f2488a.f2426b;
        editTextPreference2.setText(obj2);
        qVar = this.f2488a.f2425a;
        qVar.d(obj2);
        return true;
    }
}
