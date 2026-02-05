package com.estrongs.android.ui.preference;

import android.annotation.SuppressLint;
import android.app.Fragment;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.preference.fragments.af;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class TabletSettingsActivity extends ESActivity implements PreferenceFragment.OnPreferenceStartFragmentCallback {
    private static Preference.OnPreferenceChangeListener d = new s();

    /* renamed from: a, reason: collision with root package name */
    private ViewGroup f2402a;

    /* renamed from: b, reason: collision with root package name */
    private ViewGroup f2403b;
    private TextView c;

    private void a() {
        this.f2402a.setVisibility(0);
        this.f2403b.setVisibility(0);
        getFragmentManager().beginTransaction().replace(C0000R.id.headers, new af()).commit();
    }

    private void a(CharSequence charSequence) {
        if (this.c != null) {
            this.c.setText(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0000R.layout.preference_list_content);
        this.f2402a = (ViewGroup) findViewById(C0000R.id.headers);
        this.f2403b = (ViewGroup) findViewById(C0000R.id.prefs_body);
        this.c = (TextView) this.f2403b.findViewById(C0000R.id.current);
        a();
    }

    @Override // android.preference.PreferenceFragment.OnPreferenceStartFragmentCallback
    public boolean onPreferenceStartFragment(PreferenceFragment preferenceFragment, Preference preference) {
        Fragment instantiate = Fragment.instantiate(this, preference.getFragment(), preference.getExtras());
        FragmentTransaction beginTransaction = getFragmentManager().beginTransaction();
        beginTransaction.replace(C0000R.id.prefs_frame, instantiate);
        a(preference.getTitle());
        beginTransaction.commitAllowingStateLoss();
        return true;
    }
}
