package com.estrongs.android.pop.app;

import android.preference.Preference;

/* loaded from: classes.dex */
class eq implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f783a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eq(PopPreferenceActivity popPreferenceActivity) {
        this.f783a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        if (!((Boolean) obj).booleanValue()) {
            this.f783a.showDialog(112);
            return false;
        }
        String J = com.estrongs.android.pop.q.a(this.f783a).J();
        if (J == null || J.length() == 0) {
            this.f783a.showDialog(111);
            return false;
        }
        this.f783a.r.setEnabled(true);
        return true;
    }
}
