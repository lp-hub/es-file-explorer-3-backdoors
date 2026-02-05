package com.estrongs.android.pop.app;

import android.preference.EditTextPreference;
import android.preference.Preference;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fa implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f795a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fa(PopPreferenceActivity popPreferenceActivity) {
        this.f795a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        EditTextPreference editTextPreference;
        EditTextPreference editTextPreference2;
        String obj2 = obj.toString();
        if (obj2.trim().equals("")) {
            this.f795a.showDialog(105);
            return false;
        }
        boolean z = com.estrongs.fs.impl.local.d.h(obj2) && com.estrongs.fs.impl.local.d.a(obj2);
        if (obj2.charAt(obj2.length() - 1) != '/') {
            obj2 = obj2 + "/";
        }
        this.f795a.B = obj2;
        this.f795a.C = 1;
        if (!z) {
            this.f795a.showDialog(105);
            return false;
        }
        editTextPreference = this.f795a.z;
        editTextPreference.setSummary(((Object) this.f795a.getText(C0000R.string.app_backup_directory)) + obj2);
        editTextPreference2 = this.f795a.z;
        editTextPreference2.setText(obj2);
        this.f795a.f367b.i(obj2);
        return true;
    }
}
