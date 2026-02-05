package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.os.Handler;
import android.preference.Preference;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class CleanPreferenceFragment extends com.estrongs.android.pop.esclasses.g {

    /* renamed from: a, reason: collision with root package name */
    private Preference f2423a;

    /* renamed from: b, reason: collision with root package name */
    private ProgressDialog f2424b;
    private Preference c;

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (FileExplorerActivity.E() == null) {
            return;
        }
        b();
        FileExplorerActivity.E().a(true, new Handler(), (Runnable) new u(this));
    }

    private void b() {
        this.f2424b = new ProgressDialog(getActivity());
        this.f2424b.setMessage(getText(C0000R.string.progress_deleting));
        this.f2424b.setIndeterminate(true);
        this.f2424b.setCancelable(true);
        this.f2424b.show();
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(C0000R.xml.pref_clean);
        this.f2423a = findPreference("cache");
        this.f2423a.setOnPreferenceClickListener(new s(this));
        this.c = findPreference("clean_prefer");
        if (this.c != null) {
            this.c.setOnPreferenceClickListener(new t(this));
        }
    }
}
