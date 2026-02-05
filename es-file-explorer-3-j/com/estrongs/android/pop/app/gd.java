package com.estrongs.android.pop.app;

import android.preference.Preference;

/* loaded from: classes.dex */
class gd implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f838a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gd(PopPreferenceActivity popPreferenceActivity) {
        this.f838a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        boolean a2;
        String obj2 = obj.toString();
        if (obj2.trim().equals("")) {
            this.f838a.showDialog(105);
            return false;
        }
        a2 = this.f838a.a(obj2);
        if (obj2.charAt(obj2.length() - 1) != '/') {
            obj2 = obj2 + "/";
        }
        this.f838a.B = obj2;
        this.f838a.C = 3;
        if (!a2) {
            this.f838a.showDialog(105);
            return false;
        }
        this.f838a.e.setSummary(obj2);
        this.f838a.e.setText(obj2);
        this.f838a.f367b.k(obj2);
        return true;
    }
}
