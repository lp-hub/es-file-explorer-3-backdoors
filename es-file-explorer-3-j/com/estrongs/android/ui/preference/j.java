package com.estrongs.android.ui.preference;

import android.preference.Preference;
import org.apache.commons.net.ftp.FTPReply;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FtpServerPreference f2498a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(FtpServerPreference ftpServerPreference) {
        this.f2498a = ftpServerPreference;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        this.f2498a.showDialog(FTPReply.RESTART_MARKER);
        return true;
    }
}
