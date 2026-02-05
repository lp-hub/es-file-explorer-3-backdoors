package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import com.estrongs.android.pop.view.utils.RemoteSynchronizer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class r implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ BackupPreferenceFragment f2484a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(BackupPreferenceFragment backupPreferenceFragment) {
        this.f2484a = backupPreferenceFragment;
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
