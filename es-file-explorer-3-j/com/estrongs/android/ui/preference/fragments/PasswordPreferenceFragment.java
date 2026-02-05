package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class PasswordPreferenceFragment extends com.estrongs.android.pop.esclasses.g {

    /* renamed from: a, reason: collision with root package name */
    private CheckBoxPreference f2430a;

    /* renamed from: b, reason: collision with root package name */
    private Preference f2431b;
    private CheckBoxPreference c;
    private CheckBoxPreference d;

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        com.estrongs.android.ui.b.aq c = new com.estrongs.android.ui.b.aq(getActivity()).a(C0000R.string.preference_net_passwd_change_title).b(C0000R.string.confirm_ok, new ap(this)).c(C0000R.string.confirm_cancel, new ao(this));
        View inflate = ((LayoutInflater) getActivity().getSystemService("layout_inflater")).inflate(C0000R.layout.net_pincode, (ViewGroup) null);
        inflate.findViewById(C0000R.id.pincode_username_row).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_old_passwd_row).setVisibility(0);
        inflate.findViewById(C0000R.id.pincode_username_row).setVisibility(8);
        ((EditText) inflate.findViewById(C0000R.id.pincode_new_passwd)).setText("");
        ((EditText) inflate.findViewById(C0000R.id.pincode_old_passwd)).setText("");
        ((EditText) inflate.findViewById(C0000R.id.pincode_confirm_passwd)).setText("");
        ((TextView) inflate.findViewById(C0000R.id.pincode_old_passwd_txt)).setText(((Object) getText(C0000R.string.net_passwd_old)) + " ");
        ((TextView) inflate.findViewById(C0000R.id.pincode_new_passwd_txt)).setText(((Object) getText(C0000R.string.net_passwd_new)) + " ");
        ((TextView) inflate.findViewById(C0000R.id.pincode_confirm_passwd_txt)).setText(((Object) getText(C0000R.string.net_passwd_confirm)) + " ");
        c.a(inflate);
        com.estrongs.android.ui.b.ag a2 = c.a();
        a2.getWindow().setSoftInputMode(5);
        a2.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        com.estrongs.android.ui.b.aq c = new com.estrongs.android.ui.b.aq(getActivity()).a(C0000R.string.net_passwd_set_title).b(C0000R.string.confirm_ok, new ar(this, i)).c(C0000R.string.confirm_cancel, new aq(this));
        View inflate = ((LayoutInflater) getActivity().getSystemService("layout_inflater")).inflate(C0000R.layout.net_pincode, (ViewGroup) null);
        inflate.findViewById(C0000R.id.pincode_old_passwd_row).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_username_row).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_username_row).setVisibility(8);
        ((EditText) inflate.findViewById(C0000R.id.pincode_new_passwd)).setText("");
        ((EditText) inflate.findViewById(C0000R.id.pincode_old_passwd)).setText("");
        ((EditText) inflate.findViewById(C0000R.id.pincode_confirm_passwd)).setText("");
        ((TextView) inflate.findViewById(C0000R.id.pincode_old_passwd_txt)).setText(((Object) getText(C0000R.string.net_passwd_old)) + " ");
        ((TextView) inflate.findViewById(C0000R.id.pincode_new_passwd_txt)).setText(((Object) getText(C0000R.string.net_passwd_new)) + " ");
        ((TextView) inflate.findViewById(C0000R.id.pincode_confirm_passwd_txt)).setText(((Object) getText(C0000R.string.net_passwd_confirm)) + " ");
        c.a(inflate);
        com.estrongs.android.ui.b.ag a2 = c.a();
        a2.getWindow().setSoftInputMode(5);
        a2.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        com.estrongs.android.ui.b.aq c = new com.estrongs.android.ui.b.aq(getActivity()).a(C0000R.string.lbl_input_password).b(C0000R.string.confirm_ok, new ak(this, i)).c(C0000R.string.confirm_cancel, new as(this));
        View inflate = ((LayoutInflater) getActivity().getSystemService("layout_inflater")).inflate(C0000R.layout.net_pincode, (ViewGroup) null);
        inflate.findViewById(C0000R.id.pincode_username_row).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_old_passwd_row).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_confirm_passwd_row).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_username_row).setVisibility(8);
        ((EditText) inflate.findViewById(C0000R.id.pincode_new_passwd)).setText("");
        ((EditText) inflate.findViewById(C0000R.id.pincode_old_passwd)).setText("");
        ((EditText) inflate.findViewById(C0000R.id.pincode_confirm_passwd)).setText("");
        ((TextView) inflate.findViewById(C0000R.id.pincode_old_passwd_txt)).setText(((Object) getText(C0000R.string.net_passwd_old)) + " ");
        ((TextView) inflate.findViewById(C0000R.id.pincode_new_passwd_txt)).setVisibility(8);
        ((TextView) inflate.findViewById(C0000R.id.pincode_confirm_passwd_txt)).setText(((Object) getText(C0000R.string.net_passwd_confirm)) + " ");
        c.a(inflate);
        com.estrongs.android.ui.b.ag a2 = c.a();
        a2.getWindow().setSoftInputMode(5);
        a2.show();
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(C0000R.xml.pref_password);
        this.f2430a = (CheckBoxPreference) findPreference("net_passwd_enable");
        this.f2431b = findPreference("net_passwd_change");
        this.c = (CheckBoxPreference) findPreference("start_passwd_enable");
        this.d = (CheckBoxPreference) findPreference("hided_dirfiles_passwd_enable");
        if (this.f2430a != null) {
            this.f2430a.setOnPreferenceChangeListener(new aj(this));
        }
        if (this.c != null) {
            this.c.setOnPreferenceChangeListener(new al(this));
        }
        if (this.d != null) {
            this.d.setOnPreferenceChangeListener(new am(this));
        }
        if (this.f2431b == null || this.f2430a == null) {
            return;
        }
        this.f2431b.setEnabled(false);
        if (this.f2430a.isChecked()) {
            this.f2431b.setEnabled(true);
        }
        if (this.c.isChecked()) {
            this.f2431b.setEnabled(true);
        }
        if (this.d.isChecked()) {
            this.f2431b.setEnabled(true);
        }
        this.f2431b.setOnPreferenceClickListener(new an(this));
    }
}
