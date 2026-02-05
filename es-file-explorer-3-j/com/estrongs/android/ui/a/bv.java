package com.estrongs.android.ui.a;

import android.graphics.drawable.Drawable;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class bv implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bt f1540a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bv(bt btVar) {
        this.f1540a = btVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        com.estrongs.android.ui.b.ag agVar = new com.estrongs.android.ui.b.ag(this.f1540a.f1537a);
        agVar.setTitle(C0000R.string.preference_root_settings);
        agVar.setSelectable(false);
        this.f1540a.f1538b.a(C0000R.drawable.toolbar_restore);
        agVar.setItems(new Drawable[]{this.f1540a.f1538b.a(C0000R.drawable.toolbar_restore), this.f1540a.f1538b.a(C0000R.drawable.toolbar_edit_delete), this.f1540a.f1538b.a(C0000R.drawable.toolbar_backup), this.f1540a.f1538b.a(C0000R.drawable.toolbar_uninstallsystemapp), this.f1540a.f1538b.a(C0000R.drawable.toolbar_startup), this.f1540a.f1538b.a(C0000R.drawable.toolbar_mount), this.f1540a.f1538b.a(C0000R.drawable.toolbar_close)}, new String[]{this.f1540a.f1537a.getString(C0000R.string.preference_root_settings_onekey_install), this.f1540a.f1537a.getString(C0000R.string.preference_root_settings_onekey_uninstall), this.f1540a.f1537a.getString(C0000R.string.preference_root_settings_onekey_backup_appdata), this.f1540a.f1537a.getString(C0000R.string.preference_root_settings_uninstall_sysapp), this.f1540a.f1537a.getString(C0000R.string.preference_root_settings_startup_manager), this.f1540a.f1537a.getString(C0000R.string.preference_root_settings_mount), this.f1540a.f1537a.getString(C0000R.string.action_stop) + " " + this.f1540a.f1537a.getString(C0000R.string.privacy_permission_settings)}, -1, new bw(this));
        agVar.show();
    }
}
