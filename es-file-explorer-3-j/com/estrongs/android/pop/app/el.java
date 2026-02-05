package com.estrongs.android.pop.app;

import android.preference.Preference;

/* loaded from: classes.dex */
class el implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f778a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public el(PopPreferenceActivity popPreferenceActivity) {
        this.f778a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        boolean a2;
        String obj2 = obj.toString();
        if (obj2.trim().equals("")) {
            this.f778a.showDialog(105);
            return false;
        }
        a2 = this.f778a.a(obj2);
        if (obj2.charAt(obj2.length() - 1) != '/') {
            obj2 = obj2 + "/";
        }
        this.f778a.B = obj2;
        this.f778a.C = 0;
        if (!a2) {
            this.f778a.showDialog(105);
            return false;
        }
        this.f778a.c.setSummary(obj2);
        this.f778a.c.setText(obj2);
        this.f778a.f367b.d(obj2);
        return true;
    }
}
