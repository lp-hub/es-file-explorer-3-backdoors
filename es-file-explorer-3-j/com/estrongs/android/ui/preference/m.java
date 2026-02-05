package com.estrongs.android.ui.preference;

import android.content.Intent;
import android.graphics.BitmapFactory;
import android.preference.Preference;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FtpServerPreference f2502a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(FtpServerPreference ftpServerPreference) {
        this.f2502a = ftpServerPreference;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setClassName(this.f2502a, "com.estrongs.android.pop.ftp.ESFtpShortcut");
        intent.addFlags(268435456);
        intent.putExtra("mode", 1);
        Intent intent2 = new Intent();
        intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
        intent2.putExtra("android.intent.extra.shortcut.NAME", this.f2502a.getText(C0000R.string.ftpsvr_shortcut_name));
        try {
            intent2.putExtra("android.intent.extra.shortcut.ICON", BitmapFactory.decodeResource(this.f2502a.getResources(), C0000R.drawable.ftpsvr));
        } catch (Exception e) {
            e.printStackTrace();
        }
        intent2.putExtra("duplicate", true);
        intent2.setAction("com.android.launcher.action.INSTALL_SHORTCUT");
        this.f2502a.sendBroadcast(intent2);
        return true;
    }
}
