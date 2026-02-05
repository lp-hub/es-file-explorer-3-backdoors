package com.estrongs.android.pop.app;

import android.os.Handler;
import android.preference.Preference;

/* loaded from: classes.dex */
class ey implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f791a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ey(PopPreferenceActivity popPreferenceActivity) {
        this.f791a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        Handler handler;
        handler = this.f791a.D;
        handler.post(new ez(this));
        return true;
    }
}
