package com.estrongs.android.pop.app;

import android.content.Intent;
import android.preference.Preference;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ge implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f839a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ge(PopPreferenceActivity popPreferenceActivity) {
        this.f839a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        if (com.estrongs.android.util.ai.c(this.f839a)) {
            Intent intent = new Intent();
            intent.setClassName(this.f839a.getPackageName(), HelpActivity.class.getName());
            this.f839a.startActivity(intent);
            return true;
        }
        com.estrongs.android.ui.b.aq aqVar = new com.estrongs.android.ui.b.aq(this.f839a);
        aqVar.a(this.f839a.getText(C0000R.string.message_alert)).b(this.f839a.getText(C0000R.string.streaming_network_error)).a(C0000R.string.confirm_ok, new gf(this));
        aqVar.b();
        return true;
    }
}
