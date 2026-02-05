package com.estrongs.android.pop.app;

import android.app.Activity;
import android.preference.Preference;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class gb implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f836a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gb(PopPreferenceActivity popPreferenceActivity) {
        this.f836a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        com.estrongs.android.pop.view.utils.n.a((Activity) this.f836a);
        com.estrongs.android.ui.view.z.a(this.f836a, C0000R.string.clean_prefer_success, 0).show();
        return true;
    }
}
