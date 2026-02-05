package com.estrongs.android.pop.app;

import android.preference.Preference;

/* loaded from: classes.dex */
class es implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f785a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public es(PopPreferenceActivity popPreferenceActivity) {
        this.f785a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        this.f785a.showDialog(107);
        return true;
    }
}
