package com.estrongs.android.pop.app;

import android.preference.Preference;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class et implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f786a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public et(PopPreferenceActivity popPreferenceActivity) {
        this.f786a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        FileExplorerActivity E = FileExplorerActivity.E();
        if (E == null) {
            return true;
        }
        E.Q.a(null);
        return true;
    }
}
