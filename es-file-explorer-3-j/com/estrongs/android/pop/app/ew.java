package com.estrongs.android.pop.app;

import android.preference.Preference;

/* loaded from: classes.dex */
class ew implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f789a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ew(PopPreferenceActivity popPreferenceActivity) {
        this.f789a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        this.f789a.c();
        return true;
    }
}
