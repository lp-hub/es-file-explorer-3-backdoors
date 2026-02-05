package com.estrongs.android.ui.preference.fragments;

import android.preference.EditTextPreference;
import android.preference.Preference;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class a implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ AppPreferenceFragment f2435a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(AppPreferenceFragment appPreferenceFragment) {
        this.f2435a = appPreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        EditTextPreference editTextPreference;
        EditTextPreference editTextPreference2;
        com.estrongs.android.pop.q qVar;
        String obj2 = obj.toString();
        if (obj2.trim().equals("")) {
            this.f2435a.b();
            return false;
        }
        boolean z = com.estrongs.fs.impl.local.d.h(obj2) && com.estrongs.fs.impl.local.d.a(obj2);
        if (obj2.charAt(obj2.length() - 1) != '/') {
            obj2 = obj2 + "/";
        }
        this.f2435a.c = obj2;
        this.f2435a.d = 1;
        if (!z) {
            this.f2435a.b();
            return false;
        }
        editTextPreference = this.f2435a.f2420b;
        editTextPreference.setSummary(((Object) this.f2435a.getText(C0000R.string.app_backup_directory)) + obj2);
        editTextPreference2 = this.f2435a.f2420b;
        editTextPreference2.setText(obj2);
        qVar = this.f2435a.f2419a;
        qVar.i(obj2);
        return true;
    }
}
