package com.estrongs.android.ui.preference.fragments;

import android.app.ProgressDialog;
import android.preference.Preference;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CleanPreferenceFragment f2487a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(CleanPreferenceFragment cleanPreferenceFragment) {
        this.f2487a = cleanPreferenceFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        Preference preference;
        ProgressDialog progressDialog;
        preference = this.f2487a.f2423a;
        preference.setEnabled(false);
        try {
            progressDialog = this.f2487a.f2424b;
            progressDialog.dismiss();
            com.estrongs.android.ui.view.z.a(this.f2487a.getActivity(), C0000R.string.delete_text_success, 0).show();
        } catch (IllegalArgumentException e) {
        }
    }
}
