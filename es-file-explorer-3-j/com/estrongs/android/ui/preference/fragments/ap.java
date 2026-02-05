package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ap implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ PasswordPreferenceFragment f2451a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap(PasswordPreferenceFragment passwordPreferenceFragment) {
        this.f2451a = passwordPreferenceFragment;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        CheckBoxPreference checkBoxPreference;
        CheckBoxPreference checkBoxPreference2;
        CheckBoxPreference checkBoxPreference3;
        Preference preference;
        com.estrongs.android.ui.b.ag agVar = (com.estrongs.android.ui.b.ag) dialogInterface;
        String obj = ((EditText) agVar.findViewById(C0000R.id.pincode_old_passwd)).getText().toString();
        String obj2 = ((EditText) agVar.findViewById(C0000R.id.pincode_new_passwd)).getText().toString();
        if (obj2 == null) {
            obj2 = new String("");
        }
        String obj3 = ((EditText) agVar.findViewById(C0000R.id.pincode_confirm_passwd)).getText().toString();
        if (obj3 == null) {
            obj3 = new String("");
        }
        String J = com.estrongs.android.pop.q.a(this.f2451a.getActivity()).J();
        if (!obj2.equals(obj3)) {
            com.estrongs.android.ui.view.z.a(this.f2451a.getActivity(), C0000R.string.net_passwd_not_confirm, 1).show();
            dialogInterface.dismiss();
            return;
        }
        if (!obj.equals(J)) {
            com.estrongs.android.ui.view.z.a(this.f2451a.getActivity(), C0000R.string.msg_wrong_password, 1).show();
            dialogInterface.dismiss();
            return;
        }
        if (obj2.length() > 0) {
            com.estrongs.android.pop.q.a(this.f2451a.getActivity()).n(obj2);
            com.estrongs.android.ui.view.z.a(this.f2451a.getActivity(), C0000R.string.net_passwd_changed, 1).show();
        } else {
            com.estrongs.android.pop.q.a(this.f2451a.getActivity()).n(obj2);
            checkBoxPreference = this.f2451a.f2430a;
            checkBoxPreference.setChecked(false);
            checkBoxPreference2 = this.f2451a.c;
            checkBoxPreference2.setChecked(false);
            checkBoxPreference3 = this.f2451a.d;
            checkBoxPreference3.setChecked(false);
            preference = this.f2451a.f2431b;
            preference.setEnabled(false);
            com.estrongs.android.ui.view.z.a(this.f2451a.getActivity(), C0000R.string.passwd_stop_protect, 1).show();
        }
        dialogInterface.dismiss();
    }
}
