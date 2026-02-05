package com.estrongs.android.pop.app;

import android.preference.Preference;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ft implements Preference.OnPreferenceClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PopPreferenceActivity f821a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ft(PopPreferenceActivity popPreferenceActivity) {
        this.f821a = popPreferenceActivity;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        LayoutInflater a2;
        try {
            a2 = com.estrongs.android.pop.esclasses.e.a(FileExplorerActivity.E());
        } catch (Exception e) {
            a2 = com.estrongs.android.pop.esclasses.e.a(this.f821a);
        }
        View inflate = a2.inflate(C0000R.layout.backup_settings, (ViewGroup) null);
        Button button = (Button) inflate.findViewById(C0000R.id.bk_select_button);
        EditText editText = (EditText) inflate.findViewById(C0000R.id.bk_settings_dir);
        editText.setText(com.estrongs.android.pop.q.a(this.f821a).au());
        EditText editText2 = (EditText) inflate.findViewById(C0000R.id.bk_settings_passwd);
        ((TextView) inflate.findViewById(C0000R.id.bk_settings_file)).setText(C0000R.string.bk_settings_restore_file);
        ((TextView) inflate.findViewById(C0000R.id.bk_settings_passwd_title)).setText(C0000R.string.bk_settings_password);
        com.estrongs.android.ui.b.aq c = new com.estrongs.android.ui.b.aq(this.f821a).a(C0000R.string.action_restore).b(C0000R.string.confirm_ok, new fv(this, editText, editText2)).c(C0000R.string.confirm_cancel, new fu(this));
        button.setOnClickListener(new fw(this, editText));
        com.estrongs.android.ui.b.ag a3 = c.a();
        a3.setContentView(inflate);
        a3.show();
        return true;
    }
}
