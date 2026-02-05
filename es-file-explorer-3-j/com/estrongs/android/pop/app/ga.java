package com.estrongs.android.pop.app;

import android.preference.Preference;
import com.estrongs.android.pop.view.utils.RemoteSynchronizer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ga implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f835a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ga(PopPreferenceActivity popPreferenceActivity) {
        this.f835a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        if (Boolean.valueOf(obj.toString()).booleanValue()) {
            return true;
        }
        RemoteSynchronizer.f();
        return true;
    }
}
