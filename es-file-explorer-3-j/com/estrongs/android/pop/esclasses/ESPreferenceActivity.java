package com.estrongs.android.pop.esclasses;

import android.content.res.Resources;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import com.estrongs.android.pop.FexApplication;

/* loaded from: classes.dex */
public class ESPreferenceActivity extends PreferenceActivity {
    @Override // android.preference.PreferenceActivity
    public void addPreferencesFromResource(int i) {
        super.addPreferencesFromResource(i);
        new h(this).a(i, getPreferenceScreen());
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public synchronized Resources getResources() {
        return i.a(super.getResources());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            c.a(this);
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        FexApplication.a().d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        FexApplication.a().c();
    }
}
