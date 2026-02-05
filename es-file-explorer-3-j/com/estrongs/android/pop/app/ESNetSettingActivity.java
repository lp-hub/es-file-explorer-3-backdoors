package com.estrongs.android.pop.app;

import android.app.Dialog;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESPreferenceActivity;

/* loaded from: classes.dex */
public final class ESNetSettingActivity extends ESPreferenceActivity {

    /* renamed from: a, reason: collision with root package name */
    com.estrongs.android.pop.q f343a;

    /* renamed from: b, reason: collision with root package name */
    CheckBoxPreference f344b;
    CheckBoxPreference c;
    View d;
    EditText e;
    EditText f;
    private com.estrongs.android.ui.theme.al g;

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESPreferenceActivity, android.preference.PreferenceActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        setTheme(C0000R.style.preferenceTitlebar);
        requestWindowFeature(7);
        super.onCreate(bundle);
        this.g = com.estrongs.android.ui.theme.al.a(this);
        Drawable a2 = this.g.a(C0000R.drawable.setting_content_sp);
        getListView().setDivider(a2);
        getListView().setDividerHeight(a2.getIntrinsicHeight());
        getListView().setCacheColorHint(0);
        getListView().setPadding(0, 0, 0, 0);
        getWindow().setBackgroundDrawableResource(C0000R.drawable.setting_content_bg);
        setTitle(getResources().getString(C0000R.string.input_setting));
        this.f343a = com.estrongs.android.pop.q.a(this);
        addPreferencesFromResource(C0000R.xml.esnet_setting_preference);
        getWindow().setFeatureInt(7, C0000R.layout.title);
        ((ImageView) findViewById(C0000R.id.icon)).setImageDrawable(this.g.a(C0000R.drawable.sidebar_esnet));
        ((TextView) findViewById(C0000R.id.title)).setText(C0000R.string.es_net_ap_setting);
        this.f344b = (CheckBoxPreference) findPreference("random_ap");
        this.f344b.setOnPreferenceChangeListener(new af(this));
        this.c = (CheckBoxPreference) findPreference("customized_ap");
        this.c.setOnPreferenceChangeListener(new ag(this));
        boolean aj = com.estrongs.android.pop.q.a(this).aj();
        this.f344b.setChecked(!aj);
        this.c.setChecked(aj);
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity
    protected void onListItemClick(ListView listView, View view, int i, long j) {
        super.onListItemClick(listView, view, i, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESPreferenceActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // android.preference.PreferenceActivity
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
        if (preference instanceof PreferenceScreen) {
            PreferenceScreen preferenceScreen2 = (PreferenceScreen) preference;
            Dialog dialog = preferenceScreen2.getDialog();
            ListView listView = new ListView(preferenceScreen2.getContext());
            Drawable drawable = getResources().getDrawable(C0000R.drawable.setting_content_sp);
            listView.setDivider(drawable);
            listView.setDividerHeight(drawable.getIntrinsicHeight());
            listView.setCacheColorHint(0);
            listView.setAdapter(preferenceScreen2.getRootAdapter());
            listView.setOnItemClickListener(preferenceScreen2);
            dialog.setContentView(listView);
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESPreferenceActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
