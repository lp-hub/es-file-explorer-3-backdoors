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
public class k implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ BackupPreferenceFragment f2472a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(BackupPreferenceFragment backupPreferenceFragment) {
        this.f2472a = backupPreferenceFragment;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f2472a.getActivity()).inflate(C0000R.layout.backup_settings, (ViewGroup) null);
        Button button = (Button) inflate.findViewById(C0000R.id.bk_select_button);
        EditText editText = (EditText) inflate.findViewById(C0000R.id.bk_settings_dir);
        editText.setText(com.estrongs.android.pop.q.a(this.f2472a.getActivity()).au());
        EditText editText2 = (EditText) inflate.findViewById(C0000R.id.bk_settings_passwd);
        ((TextView) inflate.findViewById(C0000R.id.bk_settings_file)).setText(C0000R.string.bk_settings_restore_file);
        ((TextView) inflate.findViewById(C0000R.id.bk_settings_passwd_title)).setText(C0000R.string.bk_settings_password);
        com.estrongs.android.ui.b.aq c = new com.estrongs.android.ui.b.aq(this.f2472a.getActivity()).a(C0000R.string.action_restore).b(C0000R.string.confirm_ok, new m(this, editText, editText2)).c(C0000R.string.confirm_cancel, new l(this));
        button.setOnClickListener(new n(this, editText));
        com.estrongs.android.ui.b.ag a2 = c.a();
        a2.setContentView(inflate);
        a2.show();
        return true;
    }
}
