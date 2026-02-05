package com.estrongs.android.pop.app;

import android.preference.Preference;

/* loaded from: classes.dex */
class ev implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f788a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ev(PopPreferenceActivity popPreferenceActivity) {
        this.f788a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        new com.estrongs.android.ui.b.av(this.f788a).a();
        return true;
    }
}
