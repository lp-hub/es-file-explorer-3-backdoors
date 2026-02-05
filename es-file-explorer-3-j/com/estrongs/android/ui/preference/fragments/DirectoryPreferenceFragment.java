package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.preference.PreferenceScreen;
import com.estrongs.android.pop.C0000R;
import java.io.File;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class DirectoryPreferenceFragment extends com.estrongs.android.pop.esclasses.g {

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.android.pop.q f2425a;

    /* renamed from: b, reason: collision with root package name */
    private EditTextPreference f2426b;
    private EditTextPreference c;
    private EditTextPreference d;
    private String e = null;
    private int f = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        new com.estrongs.android.ui.b.aq(getActivity()).a(C0000R.string.message_invalid_path).b(C0000R.string.path_not_exist_text).b(C0000R.string.confirm_yes, new z(this)).c(C0000R.string.confirm_no, new y(this)).b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        return (str == null || str.length() == 0 || !new File(str).isDirectory()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.e == null || this.e.trim().equals("")) {
            this.e = "/sdcard/";
            return;
        }
        if (!new File(this.e).mkdirs()) {
            com.estrongs.android.ui.view.z.a(getActivity(), C0000R.string.path_create_error, 1).show();
            return;
        }
        if (this.f == 0) {
            this.f2426b.setSummary(this.e);
            this.f2426b.setText(this.e);
            this.f2425a.d(this.e);
        } else {
            if (this.f == 2) {
                if (this.c != null) {
                    this.c.setSummary(this.e);
                    this.c.setText(this.e);
                }
                this.f2425a.j(this.e);
                return;
            }
            if (this.f == 3) {
                if (this.d != null) {
                    this.d.setSummary(this.e);
                    this.d.setText(this.e);
                }
                this.f2425a.j(this.e);
            }
        }
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(C0000R.xml.pref_directory);
        this.f2425a = com.estrongs.android.pop.q.a(getActivity());
        String e = this.f2425a.e("Market");
        this.f2426b = (EditTextPreference) findPreference("root_dir");
        this.f2426b.setSummary(e);
        this.f2426b.setText(e);
        this.f2426b.setOnPreferenceChangeListener(new v(this));
        String B = this.f2425a.B();
        this.c = (EditTextPreference) findPreference("bt_dir");
        if (this.c != null) {
            if (com.estrongs.android.pop.m.d) {
                this.c.setSummary(B);
                this.c.setText(B);
                this.c.setOnPreferenceChangeListener(new w(this));
            } else {
                PreferenceScreen preferenceScreen = getPreferenceScreen();
                if (preferenceScreen != null) {
                    preferenceScreen.removePreference(this.c);
                }
            }
        }
        String C = this.f2425a.C();
        this.d = (EditTextPreference) findPreference("download_dir");
        if (this.d != null) {
            this.d.setSummary(C);
            this.d.setText(C);
            this.d.setOnPreferenceChangeListener(new x(this));
        }
    }
}
