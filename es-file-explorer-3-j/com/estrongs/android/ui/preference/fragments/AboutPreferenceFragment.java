package com.estrongs.android.ui.preference.fragments;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import com.baidu.sapi2.loginshare.Utils;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class AboutPreferenceFragment extends com.estrongs.android.pop.esclasses.g {

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.android.pop.q f2418a;

    private void a() {
        String b2 = b();
        if (b2 == null) {
            b2 = "1.x";
        }
        String str = "Market";
        if ("Market".equalsIgnoreCase("oem")) {
            if (com.estrongs.android.pop.m.f1160b != null) {
                str = com.estrongs.android.pop.m.f1160b;
            }
        } else if ("Market".equals("Market") && FileExplorerActivity.e != null && FileExplorerActivity.e.length() > 0) {
            str = !FileExplorerActivity.e.equals("百度") ? FileExplorerActivity.e : "ES";
        }
        if ("工信部".equalsIgnoreCase(FileExplorerActivity.e)) {
            str = "ES";
        }
        if (str.length() > 0) {
            str = " (" + str + ")";
        }
        findPreference("preference_version").setSummary(((Object) getResources().getText(C0000R.string.version)) + " " + b2 + str);
        Preference findPreference = findPreference("preference_special_thanks_to_translators");
        String string = getString(C0000R.string.special_thanks_to_translators_list);
        if ((com.estrongs.android.pop.m.f1160b != null) || string.equals("none")) {
            ((PreferenceScreen) findPreference("preference_about")).removePreference(findPreference);
        } else {
            findPreference.setSummary(string.replaceAll(",", "\n"));
        }
        if (com.estrongs.android.pop.m.i) {
            try {
                ((PreferenceScreen) findPreference("preference_about")).removePreference(findPreference("preference_more_app"));
            } catch (Exception e) {
            }
        }
    }

    private String b() {
        PackageInfo packageInfo;
        try {
            packageInfo = getActivity().getPackageManager().getPackageInfo(getActivity().getPackageName(), 8192);
        } catch (Exception e) {
            packageInfo = null;
        }
        if (packageInfo != null) {
            return packageInfo.versionName;
        }
        return null;
    }

    @Override // android.preference.PreferenceFragment, android.app.Fragment
    @SuppressLint({"NewApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(C0000R.xml.pref_about);
        this.f2418a = com.estrongs.android.pop.q.a(getActivity());
        a();
    }

    @Override // android.preference.PreferenceFragment
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        boolean onPreferenceTreeClick = super.onPreferenceTreeClick(preferenceScreen, preference);
        if (!onPreferenceTreeClick) {
            if (preference.getKey().equals("preference_website")) {
                if (!com.estrongs.android.pop.m.i) {
                    try {
                        String string = getString(C0000R.string.url);
                        if (!string.startsWith(Utils.http) && !string.startsWith(Utils.https)) {
                            string = Utils.http + string;
                        }
                        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(string)));
                    } catch (Exception e) {
                    }
                }
            } else if (preference.getKey().equals("preference_more_app")) {
                com.estrongs.android.pop.utils.y.a(getActivity(), "\"ES APP Group\"", "pub");
            } else if (preference.getKey().equals("preference_feedback")) {
                com.estrongs.android.util.o.a(getActivity());
            }
        }
        return onPreferenceTreeClick;
    }
}
