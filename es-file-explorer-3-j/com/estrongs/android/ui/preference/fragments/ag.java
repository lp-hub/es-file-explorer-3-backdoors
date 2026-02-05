package com.estrongs.android.ui.preference.fragments;

import android.content.Intent;
import android.preference.Preference;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.HelpActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ag implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ af f2441a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(af afVar) {
        this.f2441a = afVar;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        if (com.estrongs.android.util.ai.c(this.f2441a.getActivity())) {
            Intent intent = new Intent();
            intent.setClassName(this.f2441a.getActivity().getPackageName(), HelpActivity.class.getName());
            this.f2441a.getActivity().startActivity(intent);
            return true;
        }
        com.estrongs.android.ui.b.aq aqVar = new com.estrongs.android.ui.b.aq(this.f2441a.getActivity());
        aqVar.a(this.f2441a.getText(C0000R.string.message_alert)).b(this.f2441a.getText(C0000R.string.streaming_network_error)).a(C0000R.string.confirm_ok, new ah(this));
        aqVar.b();
        return true;
    }
}
