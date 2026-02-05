package com.estrongs.android.pop.app;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.preference.Preference;

/* loaded from: classes.dex */
class ex implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f790a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ex(PopPreferenceActivity popPreferenceActivity) {
        this.f790a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        PackageManager packageManager = this.f790a.getPackageManager();
        ComponentName componentName = new ComponentName(this.f790a, (Class<?>) BrowserDownloaderActivity.class);
        if (((Boolean) obj).booleanValue()) {
            packageManager.setComponentEnabledSetting(componentName, 2, 1);
        } else {
            packageManager.setComponentEnabledSetting(componentName, 1, 1);
        }
        return true;
    }
}
