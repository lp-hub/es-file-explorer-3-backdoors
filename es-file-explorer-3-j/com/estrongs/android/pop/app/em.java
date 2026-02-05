package com.estrongs.android.pop.app;

import android.content.Intent;
import android.net.Uri;
import android.preference.Preference;
import com.baidu.sapi2.loginshare.Utils;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class em implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f779a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public em(PopPreferenceActivity popPreferenceActivity) {
        this.f779a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        if (com.estrongs.android.pop.m.i) {
            return true;
        }
        try {
            String string = this.f779a.getString(C0000R.string.url);
            if (!string.startsWith(Utils.http) && !string.startsWith(Utils.https)) {
                string = Utils.http + string;
            }
            this.f779a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(string)));
            return true;
        } catch (Exception e) {
            return true;
        }
    }
}
