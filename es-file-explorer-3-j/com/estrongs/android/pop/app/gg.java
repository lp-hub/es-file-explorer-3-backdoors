package com.estrongs.android.pop.app;

import android.content.Intent;
import android.preference.Preference;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class gg implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f841a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gg(PopPreferenceActivity popPreferenceActivity) {
        this.f841a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        if (com.estrongs.android.util.ai.c(this.f841a)) {
            Intent intent = new Intent();
            intent.setClassName(this.f841a.getPackageName(), PrivacyActivity.class.getName());
            this.f841a.startActivity(intent);
            return true;
        }
        com.estrongs.android.ui.b.aq aqVar = new com.estrongs.android.ui.b.aq(this.f841a);
        aqVar.a(this.f841a.getText(C0000R.string.message_alert)).b(this.f841a.getText(C0000R.string.streaming_network_error)).a(C0000R.string.confirm_ok, new gh(this));
        aqVar.b();
        return true;
    }
}
