package com.estrongs.android.pop.app;

import android.preference.Preference;

/* loaded from: classes.dex */
class er implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f784a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public er(PopPreferenceActivity popPreferenceActivity) {
        this.f784a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        if (!((Boolean) obj).booleanValue()) {
            this.f784a.showDialog(114);
            return false;
        }
        String J = com.estrongs.android.pop.q.a(this.f784a).J();
        if (J == null || J.length() == 0) {
            this.f784a.showDialog(113);
            return false;
        }
        this.f784a.r.setEnabled(true);
        return true;
    }
}
