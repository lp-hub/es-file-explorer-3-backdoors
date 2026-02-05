package com.estrongs.android.pop.app;

import android.preference.Preference;

/* loaded from: classes.dex */
class af implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ESNetSettingActivity f445a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(ESNetSettingActivity eSNetSettingActivity) {
        this.f445a = eSNetSettingActivity;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        this.f445a.f344b.setChecked(true);
        this.f445a.c.setChecked(false);
        com.estrongs.android.pop.q.a(this.f445a).m(false);
        return false;
    }
}
