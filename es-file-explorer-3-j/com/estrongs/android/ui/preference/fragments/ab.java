package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* loaded from: classes.dex */
class ab implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ DisplayPreferenceFragment f2437a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(DisplayPreferenceFragment displayPreferenceFragment) {
        this.f2437a = displayPreferenceFragment;
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
