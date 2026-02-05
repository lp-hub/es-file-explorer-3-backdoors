package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ar implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f2453a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ PasswordPreferenceFragment f2454b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(PasswordPreferenceFragment passwordPreferenceFragment, int i) {
        this.f2454b = passwordPreferenceFragment;
        this.f2453a = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        CheckBoxPreference checkBoxPreference;
        CheckBoxPreference checkBoxPreference2;
        Preference preference;
        CheckBoxPreference checkBoxPreference3;
        com.estrongs.android.ui.b.ag agVar = (com.estrongs.android.ui.b.ag) dialogInterface;
        String obj = ((EditText) agVar.findViewById(C0000R.id.pincode_new_passwd)).getText().toString();
        String obj2 = ((EditText) agVar.findViewById(C0000R.id.pincode_confirm_passwd)).getText().toString();
        if (obj == null || obj.length() == 0) {
            com.estrongs.android.ui.view.z.a(this.f2454b.getActivity(), C0000R.string.net_passwd_can_not_null, 1).show();
        } else if (obj.equals(obj2)) {
            com.estrongs.android.pop.q.a(this.f2454b.getActivity()).n(obj);
            if (this.f2453a == 108) {
                checkBoxPreference3 = this.f2454b.f2430a;
                checkBoxPreference3.setChecked(true);
            } else if (this.f2453a == 111) {
                checkBoxPreference2 = this.f2454b.c;
                checkBoxPreference2.setChecked(true);
            } else if (this.f2453a == 113) {
                checkBoxPreference = this.f2454b.d;
                checkBoxPreference.setChecked(true);
            }
            preference = this.f2454b.f2431b;
            preference.setEnabled(true);
        } else {
            com.estrongs.android.ui.view.z.a(this.f2454b.getActivity(), C0000R.string.net_passwd_not_confirm, 1).show();
        }
        dialogInterface.dismiss();
    }
}
