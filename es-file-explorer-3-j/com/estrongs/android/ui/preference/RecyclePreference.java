package com.estrongs.android.ui.preference;

import android.app.Dialog;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESPreferenceActivity;
import com.estrongs.android.ui.theme.al;

/* loaded from: classes.dex */
public class RecyclePreference extends ESPreferenceActivity {
    private void a() {
        ((CheckBoxPreference) findPreference("enable_recycle")).setChecked(com.estrongs.android.pop.q.a(this).aD());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESPreferenceActivity, android.preference.PreferenceActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        setTheme(C0000R.style.preferenceTitlebar);
        requestWindowFeature(7);
        super.onCreate(bundle);
        Drawable drawable = getResources().getDrawable(C0000R.drawable.setting_content_sp);
        getListView().setDivider(drawable);
        getListView().setDividerHeight(drawable.getIntrinsicHeight());
        getListView().setCacheColorHint(0);
        getListView().setPadding(0, 0, 0, 0);
        getWindow().setBackgroundDrawableResource(C0000R.drawable.setting_content_bg);
        setTitle(getResources().getString(C0000R.string.input_setting));
        addPreferencesFromResource(C0000R.xml.recycle_preference);
        getWindow().setFeatureInt(7, C0000R.layout.title);
        ((ImageView) findViewById(C0000R.id.icon)).setImageDrawable(al.a(this).a(C0000R.drawable.recycle_setting_icon));
        ((TextView) findViewById(C0000R.id.title)).setText(C0000R.string.preference_recycle_settings_text);
        a();
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
            listView.setBackgroundColor(getResources().getColor(C0000R.color.preference_background));
            dialog.setContentView(listView);
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }
}
