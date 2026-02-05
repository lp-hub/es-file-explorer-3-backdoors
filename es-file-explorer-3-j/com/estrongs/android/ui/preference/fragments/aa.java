package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;

/* loaded from: classes.dex */
class aa implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ DisplayPreferenceFragment f2436a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(DisplayPreferenceFragment displayPreferenceFragment) {
        this.f2436a = displayPreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        com.estrongs.android.pop.q qVar;
        com.estrongs.android.pop.q qVar2;
        qVar = this.f2436a.f2427a;
        qVar.c(Boolean.valueOf(obj.toString()).booleanValue());
        StringBuilder sb = new StringBuilder();
        qVar2 = this.f2436a.f2427a;
        com.estrongs.fs.a.b.a().a(sb.append(com.estrongs.android.util.ak.bp(qVar2.e("Market"))).append("*").toString());
        return true;
    }
}
