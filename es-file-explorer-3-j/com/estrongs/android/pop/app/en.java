package com.estrongs.android.pop.app;

import android.preference.Preference;

/* loaded from: classes.dex */
class en implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f780a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public en(PopPreferenceActivity popPreferenceActivity) {
        this.f780a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        com.estrongs.android.pop.utils.y.a(this.f780a, "\"ES APP Group\"", "pub");
        return true;
    }
}
