package com.estrongs.android.ui.preference.fragments;

import android.os.Handler;
import android.preference.Preference;

/* loaded from: classes.dex */
class ac implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ DisplayPreferenceFragment f2438a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(DisplayPreferenceFragment displayPreferenceFragment) {
        this.f2438a = displayPreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        Handler handler;
        handler = this.f2438a.d;
        handler.post(new ad(this));
        return true;
    }
}
