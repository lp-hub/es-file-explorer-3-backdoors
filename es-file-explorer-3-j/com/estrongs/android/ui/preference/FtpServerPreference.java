package com.estrongs.android.ui.preference;

import android.app.Dialog;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.preference.CheckBoxPreference;
import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESPreferenceActivity;
import com.estrongs.android.ui.b.ag;
import com.estrongs.android.ui.b.aq;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.view.z;
import java.io.File;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
public class FtpServerPreference extends ESPreferenceActivity {

    /* renamed from: a, reason: collision with root package name */
    DirChoosePreference f2395a;

    /* renamed from: b, reason: collision with root package name */
    EditTextPreference f2396b;
    Preference c;
    Preference d;
    Preference e;
    CheckBoxPreference f;
    private com.estrongs.android.pop.q h;
    int g = 0;
    private String i = null;
    private int j = 0;
    private Handler k = new Handler();

    private void a() {
        this.f2395a = (DirChoosePreference) findPreference("ftpsvr_root_dir");
        this.f = (CheckBoxPreference) findPreference("ftpsvr_auto_exit");
        this.c = findPreference("ftpsvr_account_change");
        this.f2396b = (CustomEditTextPreference) findPreference("ftpsvr_port");
        this.d = findPreference("ftpsvr_charset_change");
        this.e = findPreference("ftpsvr_create_shortcut");
        String T = com.estrongs.android.pop.q.a(this).T();
        if (T == null || T.length() == 0) {
            this.c.setSummary(((Object) getText(C0000R.string.preference_ftpsvr_curr_user)) + ((String) getText(C0000R.string.input_anonymous)));
        } else {
            this.c.setSummary(((Object) getText(C0000R.string.preference_ftpsvr_curr_user)) + "" + T);
        }
        int V = com.estrongs.android.pop.q.a(this).V();
        this.f2396b.setSummary(((Object) getText(C0000R.string.preference_ftpsvr_curr_port)) + "" + V);
        this.f2396b.setText("" + V);
        String U = com.estrongs.android.pop.q.a(this).U();
        this.f2395a.setSummary(((Object) getText(C0000R.string.current_directory)) + "" + (U == null ? "/" : U));
        DirChoosePreference dirChoosePreference = this.f2395a;
        if (U == null) {
            U = "/";
        }
        dirChoosePreference.setText(U);
        this.f2395a.setOnPreferenceChangeListener(new d(this));
        this.f2396b.setOnPreferenceChangeListener(new h(this));
        try {
            com.estrongs.android.ftp.k a2 = com.estrongs.android.ftp.k.a();
            a2.a(this, new i(this, a2));
        } catch (Exception e) {
        }
        this.c.setOnPreferenceClickListener(new j(this));
        this.d.setSummary(((Object) getText(C0000R.string.preference_ftpsvr_charset_change_summary)) + com.estrongs.android.pop.q.a(this).W());
        this.d.setOnPreferenceClickListener(new k(this));
        this.e.setOnPreferenceClickListener(new m(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        return (str == null || str.length() == 0 || !new File(str).isDirectory()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.i == null || this.i.trim().equals("")) {
            this.i = "/sdcard/";
        } else {
            if (new File(this.i).mkdirs()) {
                return;
            }
            z.a(this, C0000R.string.path_create_error, 1).show();
        }
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
        this.h = com.estrongs.android.pop.q.a(this);
        addPreferencesFromResource(C0000R.xml.ftp_server_pref);
        getWindow().setFeatureInt(7, C0000R.layout.title);
        ((ImageView) findViewById(C0000R.id.icon)).setImageDrawable(al.a(this).a(C0000R.drawable.remote_setting_icon));
        ((TextView) findViewById(C0000R.id.title)).setText(C0000R.string.preference_remote_settings_text);
        a();
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        switch (i) {
            case 105:
                return new aq(this).a(C0000R.string.message_invalid_path).b(C0000R.string.path_not_exist_text).b(C0000R.string.confirm_yes, new o(this)).c(C0000R.string.confirm_no, new n(this)).a();
            case FTPReply.RESTART_MARKER /* 110 */:
                aq c = new aq(this).a(C0000R.string.preference_ftpsvr_account_change_title).b(C0000R.string.confirm_ok, new f(this)).c(C0000R.string.confirm_cancel, new p(this));
                View inflate = com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.net_pincode, (ViewGroup) null);
                inflate.findViewById(C0000R.id.pincode_old_passwd_row).setVisibility(8);
                c.a(inflate);
                ag a2 = c.a();
                a2.getWindow().setSoftInputMode(5);
                return a2;
            default:
                return super.onCreateDialog(i);
        }
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

    @Override // android.app.Activity
    protected void onPrepareDialog(int i, Dialog dialog) {
        try {
            Window window = dialog.getWindow();
            window.setLayout(window.getWindowManager().getDefaultDisplay().getWidth(), window.getWindowManager().getDefaultDisplay().getHeight());
        } catch (Exception e) {
        }
        switch (i) {
            case FTPReply.RESTART_MARKER /* 110 */:
                dialog.findViewById(C0000R.id.pincode_username_row).setVisibility(0);
                dialog.findViewById(C0000R.id.pincode_confirm_passwd_row).setVisibility(8);
                ((TextView) dialog.findViewById(C0000R.id.pincode_username_txt)).setText(getText(C0000R.string.input_username).toString() + getText(C0000R.string.colon).toString() + " ");
                ((TextView) dialog.findViewById(C0000R.id.pincode_new_passwd_txt)).setText(getText(C0000R.string.input_password).toString() + getText(C0000R.string.colon).toString() + " ");
                return;
            default:
                return;
        }
    }
}
