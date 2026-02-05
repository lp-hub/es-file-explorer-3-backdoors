package com.estrongs.android.ui.preference.fragments;

import android.content.DialogInterface;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ak implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f2445a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ PasswordPreferenceFragment f2446b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ak(PasswordPreferenceFragment passwordPreferenceFragment, int i) {
        this.f2446b = passwordPreferenceFragment;
        this.f2445a = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        CheckBoxPreference checkBoxPreference;
        CheckBoxPreference checkBoxPreference2;
        CheckBoxPreference checkBoxPreference3;
        CheckBoxPreference checkBoxPreference4;
        CheckBoxPreference checkBoxPreference5;
        Preference preference;
        CheckBoxPreference checkBoxPreference6;
        String obj = ((EditText) ((com.estrongs.android.ui.b.ag) dialogInterface).findViewById(C0000R.id.pincode_new_passwd)).getText().toString();
        String J = com.estrongs.android.pop.q.a(this.f2446b.getActivity()).J();
        if (obj == null || obj.length() == 0 || !obj.equals(J)) {
            com.estrongs.android.ui.view.z.a(this.f2446b.getActivity(), C0000R.string.msg_wrong_password, 1).show();
        } else {
            if (this.f2445a == 109) {
                checkBoxPreference6 = this.f2446b.f2430a;
                checkBoxPreference6.setChecked(false);
            } else if (this.f2445a == 112) {
                checkBoxPreference2 = this.f2446b.c;
                checkBoxPreference2.setChecked(false);
            } else if (this.f2445a == 114) {
                checkBoxPreference = this.f2446b.d;
                checkBoxPreference.setChecked(false);
            }
            checkBoxPreference3 = this.f2446b.f2430a;
            if (!checkBoxPreference3.isChecked()) {
                checkBoxPreference4 = this.f2446b.c;
                if (!checkBoxPreference4.isChecked()) {
                    checkBoxPreference5 = this.f2446b.d;
                    if (!checkBoxPreference5.isChecked()) {
                        preference = this.f2446b.f2431b;
                        preference.setEnabled(false);
                    }
                }
            }
        }
        dialogInterface.dismiss();
    }
}
