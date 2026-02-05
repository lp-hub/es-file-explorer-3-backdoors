package com.estrongs.android.ui.preference.fragments;

import android.preference.Preference;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ BackupPreferenceFragment f2460a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(BackupPreferenceFragment backupPreferenceFragment) {
        this.f2460a = backupPreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f2460a.getActivity()).inflate(C0000R.layout.backup_settings, (ViewGroup) null);
        Button button = (Button) inflate.findViewById(C0000R.id.bk_select_button);
        EditText editText = (EditText) inflate.findViewById(C0000R.id.bk_settings_dir);
        EditText editText2 = (EditText) inflate.findViewById(C0000R.id.bk_settings_passwd);
        ((TextView) inflate.findViewById(C0000R.id.bk_settings_file)).setText(C0000R.string.bk_settings_save_dir);
        ((TextView) inflate.findViewById(C0000R.id.bk_settings_passwd_title)).setText(C0000R.string.bk_settings_password);
        String aY = com.estrongs.android.util.ak.aY(com.estrongs.android.pop.q.a(this.f2460a.getActivity()).au());
        if (aY != null) {
            editText.setText(aY);
        }
        com.estrongs.android.ui.b.aq c = new com.estrongs.android.ui.b.aq(this.f2460a.getActivity()).a(C0000R.string.action_backup).b(C0000R.string.confirm_ok, new f(this, editText, editText2)).c(C0000R.string.confirm_cancel, new e(this));
        button.setOnClickListener(new g(this, aY, editText));
        com.estrongs.android.ui.b.ag a2 = c.a();
        a2.setContentView(inflate);
        a2.show();
        return true;
    }
}
