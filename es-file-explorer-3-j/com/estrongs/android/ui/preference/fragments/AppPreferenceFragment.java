package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.utils.bs;
import java.io.File;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class AppPreferenceFragment extends com.estrongs.android.pop.esclasses.g {

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.android.pop.q f2419a;

    /* renamed from: b, reason: collision with root package name */
    private EditTextPreference f2420b;
    private String c = null;
    private int d = 0;

    private void a() {
        if (!com.estrongs.android.pop.m.f) {
            PreferenceCategory preferenceCategory = (PreferenceCategory) findPreference("preference_tools_settings");
            PreferenceScreen preferenceScreen = (PreferenceScreen) findPreference("appmanager_preference");
            if (preferenceCategory == null || preferenceScreen == null) {
                return;
            }
            preferenceCategory.removePreference(preferenceScreen);
            return;
        }
        String A = this.f2419a.A();
        this.f2420b = (EditTextPreference) findPreference("app_backup_dir");
        this.f2420b.setSummary(((Object) getText(C0000R.string.app_backup_directory)) + A);
        this.f2420b.setText(A);
        this.f2420b.setOnPreferenceChangeListener(new a(this));
        if (!this.f2419a.j()) {
            findPreference("backup_app_cache").setEnabled(false);
            findPreference("root_auto_install").setEnabled(false);
        }
        if (bs.a()) {
            return;
        }
        try {
            ((PreferenceScreen) findPreference("app_pref_app")).removePreference(findPreference("app_check_update"));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        new com.estrongs.android.ui.b.aq(getActivity()).a(C0000R.string.message_invalid_path).b(C0000R.string.path_not_exist_text).b(C0000R.string.confirm_yes, new c(this)).c(C0000R.string.confirm_no, new b(this)).b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.c == null || this.c.trim().equals("")) {
            this.c = "/sdcard/";
        } else {
            if (!new File(this.c).mkdirs()) {
                com.estrongs.android.ui.view.z.a(getActivity(), C0000R.string.path_create_error, 1).show();
                return;
            }
            this.f2420b.setSummary(this.c);
            this.f2420b.setText(this.c);
            this.f2419a.i(this.c);
        }
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(C0000R.xml.pref_app);
        this.f2419a = com.estrongs.android.pop.q.a(getActivity());
        a();
    }
}
