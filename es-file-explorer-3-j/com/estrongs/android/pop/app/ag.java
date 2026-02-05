package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.view.ViewGroup;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ag implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ESNetSettingActivity f446a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(ESNetSettingActivity eSNetSettingActivity) {
        this.f446a = eSNetSettingActivity;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        this.f446a.f344b.setChecked(false);
        this.f446a.c.setChecked(true);
        this.f446a.d = com.estrongs.android.pop.esclasses.e.a(this.f446a).inflate(C0000R.layout.dialog_customized_ap, (ViewGroup) null);
        this.f446a.e = (EditText) this.f446a.d.findViewById(C0000R.id.ssid);
        this.f446a.f = (EditText) this.f446a.d.findViewById(C0000R.id.password);
        String ah = com.estrongs.android.pop.q.a(this.f446a).ah();
        if (ah != null) {
            this.f446a.e.setText(ah);
        }
        String ai = com.estrongs.android.pop.q.a(this.f446a).ai();
        if (ai != null) {
            this.f446a.f.setText(ai);
        }
        com.estrongs.android.ui.b.ag a2 = new com.estrongs.android.ui.b.aq(this.f446a).a(this.f446a.d).b(C0000R.string.confirm_ok, new ai(this)).c(C0000R.string.confirm_cancel, new ah(this)).a(C0000R.string.es_net_ap_setting).a();
        a2.setOnDismissListener(new aj(this));
        a2.show();
        return false;
    }
}
