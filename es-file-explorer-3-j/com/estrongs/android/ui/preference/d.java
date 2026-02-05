package com.estrongs.android.ui.preference;

import android.preference.Preference;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements Preference.OnPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FtpServerPreference f2409a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(FtpServerPreference ftpServerPreference) {
        this.f2409a = ftpServerPreference;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        boolean a2;
        com.estrongs.android.pop.q qVar;
        String obj2 = obj.toString();
        this.f2409a.j = 3;
        if (obj2.trim().equals("")) {
            this.f2409a.showDialog(105);
            return false;
        }
        if (com.estrongs.android.pop.m.j && obj2.trim().equals("/")) {
            return false;
        }
        a2 = this.f2409a.a(obj2);
        if (obj2.charAt(obj2.length() - 1) != '/') {
            obj2 = obj2 + "/";
        }
        this.f2409a.i = obj2;
        if (!a2) {
            this.f2409a.showDialog(105);
            return false;
        }
        this.f2409a.f2395a.setSummary(((Object) this.f2409a.getText(C0000R.string.current_home_directory)) + obj2);
        this.f2409a.f2395a.setText(obj2);
        qVar = this.f2409a.h;
        qVar.s(obj2);
        try {
            com.estrongs.android.ftp.k a3 = com.estrongs.android.ftp.k.a();
            a3.a(this.f2409a, new e(this, a3, obj2));
        } catch (Exception e) {
        }
        return true;
    }
}
