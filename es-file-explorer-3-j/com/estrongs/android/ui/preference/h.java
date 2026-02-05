package com.estrongs.android.ui.preference;

import android.content.Intent;
import android.preference.Preference;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.ftp.ESFtpShortcut;
import com.estrongs.android.ui.view.z;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FtpServerPreference f2495a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(FtpServerPreference ftpServerPreference) {
        this.f2495a = ftpServerPreference;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        int V = com.estrongs.android.pop.q.a(this.f2495a).V();
        String obj2 = obj.toString();
        if (obj2.trim().equals("")) {
            z.a(this.f2495a, "Port can't be null", 0).show();
            return false;
        }
        try {
            int parseInt = Integer.parseInt(obj2);
            if (parseInt <= 1024 || parseInt >= 65535) {
                throw new Exception();
            }
            if (parseInt == V) {
                return true;
            }
            com.estrongs.android.pop.q.a(this.f2495a).a(parseInt);
            try {
                new Intent(this.f2495a, (Class<?>) ESFtpShortcut.class).putExtra("mode", 2);
            } catch (Exception e) {
            }
            z.a(this.f2495a, C0000R.string.preference_ftpsvr_port_change_toast, 0).show();
            this.f2495a.f2396b.setSummary(((Object) this.f2495a.getText(C0000R.string.preference_ftpsvr_curr_port)) + "" + parseInt);
            return true;
        } catch (Exception e2) {
            z.a(this.f2495a, C0000R.string.preference_ftpsvr_port_num_err_toast, 0).show();
            return false;
        }
    }
}
