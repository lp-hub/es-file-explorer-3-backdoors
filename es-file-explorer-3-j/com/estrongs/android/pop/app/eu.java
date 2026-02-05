package com.estrongs.android.pop.app;

import android.preference.Preference;

/* loaded from: classes.dex */
class eu implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f787a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eu(PopPreferenceActivity popPreferenceActivity) {
        this.f787a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        this.f787a.f367b.c(Boolean.valueOf(obj.toString()).booleanValue());
        com.estrongs.fs.a.b.a().a(com.estrongs.android.util.ak.bp(this.f787a.c.getText()) + "*");
        return true;
    }
}
