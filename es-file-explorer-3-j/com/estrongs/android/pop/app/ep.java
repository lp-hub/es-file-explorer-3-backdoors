package com.estrongs.android.pop.app;

import android.preference.Preference;

/* loaded from: classes.dex */
class ep implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f782a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ep(PopPreferenceActivity popPreferenceActivity) {
        this.f782a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        if (!((Boolean) obj).booleanValue()) {
            this.f782a.showDialog(109);
            return false;
        }
        String J = com.estrongs.android.pop.q.a(this.f782a).J();
        if (J == null || J.length() == 0) {
            this.f782a.showDialog(108);
            return false;
        }
        this.f782a.r.setEnabled(true);
        return true;
    }
}
