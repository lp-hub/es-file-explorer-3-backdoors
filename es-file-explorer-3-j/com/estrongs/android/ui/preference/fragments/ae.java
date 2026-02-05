package com.estrongs.android.ui.preference.fragments;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.preference.Preference;
import com.estrongs.android.pop.app.BrowserDownloaderActivity;

/* loaded from: classes.dex */
class ae implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ DownloadPreferenceFragment f2440a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ae(DownloadPreferenceFragment downloadPreferenceFragment) {
        this.f2440a = downloadPreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        PackageManager packageManager = this.f2440a.getActivity().getPackageManager();
        ComponentName componentName = new ComponentName(this.f2440a.getActivity(), (Class<?>) BrowserDownloaderActivity.class);
        if (((Boolean) obj).booleanValue()) {
            packageManager.setComponentEnabledSetting(componentName, 2, 1);
        } else {
            packageManager.setComponentEnabledSetting(componentName, 1, 1);
        }
        return true;
    }
}
