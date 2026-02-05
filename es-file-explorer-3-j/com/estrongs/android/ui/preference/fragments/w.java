package com.estrongs.android.ui.preference.fragments;

import android.preference.EditTextPreference;
import android.preference.Preference;

/* loaded from: classes.dex */
class w implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ DirectoryPreferenceFragment f2489a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(DirectoryPreferenceFragment directoryPreferenceFragment) {
        this.f2489a = directoryPreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        boolean a2;
        EditTextPreference editTextPreference;
        com.estrongs.android.pop.q qVar;
        EditTextPreference editTextPreference2;
        String obj2 = obj.toString();
        if (obj2.trim().equals("")) {
            this.f2489a.a();
            return false;
        }
        a2 = this.f2489a.a(obj2);
        if (obj2.charAt(obj2.length() - 1) != '/') {
            obj2 = obj2 + "/";
        }
        this.f2489a.e = obj2;
        this.f2489a.f = 2;
        if (!a2) {
            this.f2489a.a();
            return false;
        }
        editTextPreference = this.f2489a.c;
        editTextPreference.setSummary(obj2);
        qVar = this.f2489a.f2425a;
        qVar.j(obj2);
        editTextPreference2 = this.f2489a.c;
        editTextPreference2.setText(obj2);
        return true;
    }
}
