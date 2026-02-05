package com.estrongs.android.pop.app;

import android.preference.Preference;

/* loaded from: classes.dex */
class gc implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f837a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gc(PopPreferenceActivity popPreferenceActivity) {
        this.f837a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        boolean a2;
        String obj2 = obj.toString();
        if (obj2.trim().equals("")) {
            this.f837a.showDialog(105);
            return false;
        }
        a2 = this.f837a.a(obj2);
        if (obj2.charAt(obj2.length() - 1) != '/') {
            obj2 = obj2 + "/";
        }
        this.f837a.B = obj2;
        this.f837a.C = 2;
        if (!a2) {
            this.f837a.showDialog(105);
            return false;
        }
        this.f837a.d.setSummary(obj2);
        this.f837a.f367b.j(obj2);
        this.f837a.d.setText(obj2);
        return true;
    }
}
