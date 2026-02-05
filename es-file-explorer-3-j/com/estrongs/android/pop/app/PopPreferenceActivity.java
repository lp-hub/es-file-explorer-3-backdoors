package com.estrongs.android.pop.app;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.preference.CheckBoxPreference;
import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.PreferenceCategory;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESPreferenceActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.preference.ListPreference;
import java.io.File;
import java.util.Arrays;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
public final class PopPreferenceActivity extends ESPreferenceActivity {
    private com.estrongs.android.ui.theme.al A;

    /* renamed from: b, reason: collision with root package name */
    com.estrongs.android.pop.q f367b;
    EditTextPreference c;
    EditTextPreference d;
    EditTextPreference e;
    CheckBoxPreference f;
    CheckBoxPreference g;
    CheckBoxPreference h;
    CheckBoxPreference i;
    CheckBoxPreference j;
    CheckBoxPreference k;
    CheckBoxPreference l;
    CheckBoxPreference m;
    CheckBoxPreference n;
    Preference o;
    Preference p;
    Preference q;
    Preference r;
    Preference s;
    Preference t;
    private Preference v;
    private Preference w;
    private Preference x;
    private Preference y;

    /* renamed from: a, reason: collision with root package name */
    static boolean f366a = false;
    public static String u = "www.estrongs.com";
    private static int E = 0;
    private EditTextPreference z = null;
    private String B = null;
    private int C = 0;
    private Handler D = new Handler();
    private DialogInterface.OnCancelListener F = new fl(this);

    public static int a(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getInt("sd_sortby", 5);
    }

    private void a() {
        if (com.estrongs.android.pop.m.L) {
            try {
                ((PreferenceScreen) findPreference("preference_display_settings_category")).removePreference(findPreference("language_setting"));
            } catch (Exception e) {
            }
        }
        PreferenceCategory preferenceCategory = (PreferenceCategory) findPreference("preference_tools_settings");
        if (com.estrongs.android.pop.m.M) {
            try {
                preferenceCategory.removePreference(findPreference("gesture_settings"));
            } catch (Exception e2) {
            }
        }
        if (com.estrongs.android.pop.m.O) {
            try {
                preferenceCategory.removePreference(findPreference("downloader_settings"));
            } catch (Exception e3) {
            }
        }
        if (com.estrongs.android.pop.m.U) {
            try {
                ((PreferenceScreen) findPreference("preference_net_settings_category")).removePreference(findPreference("hided_dirfiles_passwd_enable"));
            } catch (Exception e4) {
            }
        }
        if (com.estrongs.android.pop.m.w) {
            try {
                ((PreferenceScreen) findPreference("appmanager_preference")).removePreference(findPreference("app_root_enhancement"));
            } catch (Exception e5) {
            }
        }
        if (com.estrongs.android.pop.m.i) {
            try {
                ((PreferenceScreen) findPreference("preference_about")).removePreference(findPreference("preference_more_app"));
                ((PreferenceCategory) findPreference("preference_upgrade_settings_text_category")).removePreference(findPreference("preference_rate"));
            } catch (Exception e6) {
            }
        }
    }

    public static void a(Context context, int i) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putInt("sd_sortby", i);
        edit.commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        return (str == null || str.length() == 0 || !new File(str).isDirectory()) ? false : true;
    }

    private void b() {
        if (!com.estrongs.android.pop.m.f) {
            PreferenceCategory preferenceCategory = (PreferenceCategory) findPreference("preference_tools_settings");
            PreferenceScreen preferenceScreen = (PreferenceScreen) findPreference("appmanager_preference");
            if (preferenceCategory == null || preferenceScreen == null) {
                return;
            }
            preferenceCategory.removePreference(preferenceScreen);
            return;
        }
        String A = this.f367b.A();
        this.z = (EditTextPreference) findPreference("app_backup_dir");
        this.z.setSummary(((Object) getText(C0000R.string.app_backup_directory)) + A);
        this.z.setText(A);
        this.z.setOnPreferenceChangeListener(new fa(this));
        if (!com.estrongs.android.pop.q.a(this).j()) {
            findPreference("backup_app_cache").setEnabled(false);
            findPreference("root_auto_install").setEnabled(false);
        }
        PreferenceScreen preferenceScreen2 = (PreferenceScreen) findPreference("appmanager_preference");
        if (preferenceScreen2 == null || com.estrongs.android.pop.utils.bs.a()) {
            return;
        }
        preferenceScreen2.removePreference(findPreference("app_check_update"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (FileExplorerActivity.E() == null) {
            return;
        }
        showDialog(102);
        FileExplorerActivity.E().a(true, this.D, (Runnable) new fb(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.B == null || this.B.trim().equals("")) {
            this.B = "/sdcard/";
            return;
        }
        if (!new File(this.B).mkdirs()) {
            com.estrongs.android.ui.view.z.a(this, C0000R.string.path_create_error, 1).show();
            return;
        }
        if (this.C == 0) {
            this.c.setSummary(this.B);
            this.c.setText(this.B);
            this.f367b.d(this.B);
            return;
        }
        if (this.C == 1) {
            this.z.setSummary(this.B);
            this.z.setText(this.B);
            this.f367b.i(this.B);
        } else {
            if (this.C == 2) {
                if (this.d != null) {
                    this.d.setSummary(this.B);
                    this.d.setText(this.B);
                }
                this.f367b.j(this.B);
                return;
            }
            if (this.C == 3) {
                if (this.e != null) {
                    this.e.setSummary(this.B);
                    this.e.setText(this.B);
                }
                this.f367b.j(this.B);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.f != null) {
            this.f.setChecked(false);
        }
    }

    private void f() {
        this.s = findPreference("backupsettings");
        this.s.setOnPreferenceClickListener(new fm(this));
        this.t = findPreference("restoresettings");
        this.t.setOnPreferenceClickListener(new ft(this));
        CheckBoxPreference checkBoxPreference = (CheckBoxPreference) findPreference("enableRemoteSynchronizer");
        if (checkBoxPreference != null) {
            checkBoxPreference.setOnPreferenceChangeListener(new ga(this));
        }
    }

    private String g() {
        PackageInfo packageInfo;
        try {
            packageInfo = getPackageManager().getPackageInfo(getPackageName(), 8192);
        } catch (Exception e) {
            packageInfo = null;
        }
        if (packageInfo != null) {
            return packageInfo.versionName;
        }
        return null;
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        super.onContentChanged();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESPreferenceActivity, android.preference.PreferenceActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        PreferenceCategory preferenceCategory;
        if (!com.estrongs.android.util.aw.e()) {
            setTheme(C0000R.style.preferenceTitlebar);
            requestWindowFeature(7);
        }
        super.onCreate(bundle);
        this.A = com.estrongs.android.ui.theme.al.a(this);
        Drawable a2 = this.A.a(C0000R.drawable.setting_content_sp);
        getListView().setDivider(a2);
        getListView().setDividerHeight(a2.getIntrinsicHeight());
        getListView().setCacheColorHint(0);
        getListView().setPadding(0, 0, 0, 0);
        getWindow().setBackgroundDrawableResource(C0000R.drawable.setting_content_bg);
        setTitle(getResources().getString(C0000R.string.input_setting));
        this.f367b = com.estrongs.android.pop.q.a(this);
        this.f367b.am();
        this.f367b.ak();
        addPreferencesFromResource(C0000R.xml.new_preference);
        if (!com.estrongs.android.util.aw.e()) {
            getWindow().setFeatureInt(7, C0000R.layout.title);
            ((ImageView) findViewById(C0000R.id.icon)).setImageDrawable(this.A.a(C0000R.drawable.fex));
            ((TextView) findViewById(C0000R.id.title)).setText(C0000R.string.input_setting);
        }
        String e = this.f367b.e("Market");
        this.c = (EditTextPreference) findPreference("root_dir");
        this.c.setSummary(e);
        this.c.setText(e);
        this.c.setOnPreferenceChangeListener(new el(this));
        this.o = findPreference("cache");
        this.o.setOnPreferenceClickListener(new ew(this));
        this.p = findPreference("upgrade_check");
        this.p.setOnPreferenceClickListener(new fi(this));
        if (com.estrongs.android.pop.m.t) {
            PreferenceScreen preferenceScreen = (PreferenceScreen) findPreference("update_preference");
            this.l = (CheckBoxPreference) findPreference("upgrade_auto_check");
            if (preferenceScreen != null && this.l != null) {
                preferenceScreen.removePreference(this.l);
            }
        }
        this.m = (CheckBoxPreference) findPreference("send_statistics");
        if (this.m != null && "CN".equalsIgnoreCase(com.estrongs.android.pop.esclasses.c.f1130a) && com.estrongs.android.pop.m.u) {
            this.m.setTitle("统计");
            this.m.setSummary("发送统计数据");
        } else {
            PreferenceScreen preferenceScreen2 = (PreferenceScreen) findPreference("update_preference");
            if (preferenceScreen2 != null && this.m != null) {
                preferenceScreen2.removePreference(this.m);
            }
        }
        this.q = findPreference("clean_prefer");
        if (this.q != null) {
            this.q.setOnPreferenceClickListener(new gb(this));
        }
        String B = this.f367b.B();
        this.d = (EditTextPreference) findPreference("bt_dir");
        if (this.d != null) {
            if (com.estrongs.android.pop.m.d) {
                this.d.setSummary(B);
                this.d.setText(B);
                this.d.setOnPreferenceChangeListener(new gc(this));
            } else {
                PreferenceScreen preferenceScreen3 = (PreferenceScreen) findPreference("preference_directory_settings_category");
                if (preferenceScreen3 != null) {
                    preferenceScreen3.removePreference(this.d);
                }
            }
        }
        String C = this.f367b.C();
        this.e = (EditTextPreference) findPreference("download_dir");
        if (this.e != null) {
            this.e.setSummary(C);
            this.e.setText(C);
            this.e.setOnPreferenceChangeListener(new gd(this));
        }
        this.v = findPreference("preference_help");
        if (com.estrongs.android.pop.m.g) {
            PreferenceCategory preferenceCategory2 = (PreferenceCategory) findPreference("preference_upgrade_settings_text_category");
            if (preferenceCategory2 != null && this.v != null) {
                preferenceCategory2.removePreference(this.v);
            }
        } else {
            this.v.setOnPreferenceClickListener(new ge(this));
        }
        this.x = findPreference("preference_privacy");
        this.x.setOnPreferenceClickListener(new gg(this));
        if (!com.estrongs.android.pop.utils.bs.a() && (preferenceCategory = (PreferenceCategory) findPreference("preference_upgrade_settings_text_category")) != null && this.x != null) {
            preferenceCategory.removePreference(this.x);
        }
        this.y = findPreference("preference_rate");
        this.y.setOnPreferenceClickListener(new gi(this));
        String g = g();
        if (g == null) {
            g = "1.x";
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
        findPreference("preference_version").setSummary(((Object) getResources().getText(C0000R.string.version)) + " " + g + str);
        Preference findPreference = findPreference("preference_special_thanks_to_translators");
        String string = getString(C0000R.string.special_thanks_to_translators_list);
        if ((com.estrongs.android.pop.m.f1160b != null) || string.equals("none")) {
            ((PreferenceScreen) findPreference("preference_about")).removePreference(findPreference);
        } else {
            findPreference.setSummary(string.replaceAll(",", "\n"));
        }
        findPreference("preference_website").setOnPreferenceClickListener(new em(this));
        findPreference("preference_more_app").setOnPreferenceClickListener(new en(this));
        findPreference("preference_feedback").setOnPreferenceClickListener(new eo(this));
        this.g = (CheckBoxPreference) findPreference("net_passwd_enable");
        this.r = findPreference("net_passwd_change");
        this.h = (CheckBoxPreference) findPreference("start_passwd_enable");
        this.i = (CheckBoxPreference) findPreference("hided_dirfiles_passwd_enable");
        if (this.g != null) {
            this.g.setOnPreferenceChangeListener(new ep(this));
        }
        if (this.h != null) {
            this.h.setOnPreferenceChangeListener(new eq(this));
        }
        if (this.i != null) {
            this.i.setOnPreferenceChangeListener(new er(this));
        }
        if (this.r != null && this.g != null) {
            this.r.setEnabled(false);
            if (this.g.isChecked()) {
                this.r.setEnabled(true);
            }
            if (this.h.isChecked()) {
                this.r.setEnabled(true);
            }
            if (this.i.isChecked()) {
                this.r.setEnabled(true);
            }
            this.r.setOnPreferenceClickListener(new es(this));
        }
        f();
        b();
        CheckBoxPreference checkBoxPreference = (CheckBoxPreference) findPreference("hidden_file");
        if (checkBoxPreference != null) {
            checkBoxPreference.setOnPreferenceChangeListener(new et(this));
        }
        CheckBoxPreference checkBoxPreference2 = (CheckBoxPreference) findPreference("show_pcs_drive");
        if (checkBoxPreference2 != null) {
            if (com.estrongs.android.pop.utils.bs.a() && com.estrongs.android.pop.m.I) {
                checkBoxPreference2.setOnPreferenceChangeListener(new eu(this));
            } else {
                ((PreferenceScreen) findPreference("preference_display_settings_category")).removePreference(checkBoxPreference2);
            }
        }
        this.w = findPreference("default_window");
        this.w.setOnPreferenceClickListener(new ev(this));
        this.j = (CheckBoxPreference) findPreference("show_select_button");
        this.j.setChecked(this.f367b.ak());
        this.n = (CheckBoxPreference) findPreference("show_windows_button");
        this.n.setChecked(this.f367b.am());
        ((CheckBoxPreference) findPreference("show_disk_usage")).setChecked(this.f367b.P());
        ((CheckBoxPreference) findPreference("show_disk_remain")).setChecked(this.f367b.Q());
        this.k = (CheckBoxPreference) findPreference("browser_downloader_disabled");
        this.k.setOnPreferenceChangeListener(new ex(this));
        ListPreference listPreference = (ListPreference) findPreference("language_setting");
        String[] stringArray = getResources().getStringArray(C0000R.array.preference_language_setting_entries);
        String[] strArr = new String[stringArray.length];
        strArr[0] = getString(C0000R.string.preference_language_auto_select);
        for (int i = 1; i < stringArray.length; i++) {
            strArr[i] = stringArray[i];
        }
        listPreference.a(strArr);
        int indexOf = Arrays.asList(getResources().getStringArray(C0000R.array.preference_language_setting_values)).indexOf(com.estrongs.android.pop.q.a(this).E());
        if (indexOf >= 0) {
            listPreference.setSummary(strArr[indexOf]);
        }
        listPreference.setOnPreferenceChangeListener(new ey(this));
        a();
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        LayoutInflater layoutInflater;
        LayoutInflater layoutInflater2;
        LayoutInflater layoutInflater3;
        com.estrongs.android.pop.q.a(this);
        switch (i) {
            case 102:
                ProgressDialog progressDialog = new ProgressDialog(this);
                progressDialog.setMessage(getText(C0000R.string.progress_deleting));
                progressDialog.setIndeterminate(true);
                progressDialog.setCancelable(true);
                return progressDialog;
            case 103:
            case 104:
            case 106:
            case FTPReply.RESTART_MARKER /* 110 */:
            default:
                return null;
            case 105:
                return new com.estrongs.android.ui.b.aq(this).a(C0000R.string.message_invalid_path).b(C0000R.string.path_not_exist_text).b(C0000R.string.confirm_yes, new fd(this)).c(C0000R.string.confirm_no, new fc(this)).a();
            case 107:
                com.estrongs.android.ui.b.aq c = new com.estrongs.android.ui.b.aq(this).a(C0000R.string.preference_net_passwd_change_title).b(C0000R.string.confirm_ok, new ff(this)).c(C0000R.string.confirm_cancel, new fe(this));
                try {
                    layoutInflater3 = com.estrongs.android.pop.esclasses.e.a(FileExplorerActivity.E());
                } catch (Exception e) {
                    layoutInflater3 = null;
                }
                if (layoutInflater3 == null) {
                    layoutInflater3 = com.estrongs.android.pop.esclasses.e.a(this);
                }
                View inflate = layoutInflater3.inflate(C0000R.layout.net_pincode, (ViewGroup) null);
                inflate.findViewById(C0000R.id.pincode_username_row).setVisibility(8);
                inflate.findViewById(C0000R.id.pincode_old_passwd_row).setVisibility(0);
                c.a(inflate);
                com.estrongs.android.ui.b.ag a2 = c.a();
                a2.getWindow().setSoftInputMode(5);
                return a2;
            case 108:
            case 111:
            case 113:
                com.estrongs.android.ui.b.aq c2 = new com.estrongs.android.ui.b.aq(this).a(C0000R.string.net_passwd_set_title).b(C0000R.string.confirm_ok, new fh(this, i)).c(C0000R.string.confirm_cancel, new fg(this));
                try {
                    layoutInflater2 = com.estrongs.android.pop.esclasses.e.a(FileExplorerActivity.E());
                } catch (Exception e2) {
                    layoutInflater2 = null;
                }
                if (layoutInflater2 == null) {
                    layoutInflater2 = com.estrongs.android.pop.esclasses.e.a(this);
                }
                View inflate2 = layoutInflater2.inflate(C0000R.layout.net_pincode, (ViewGroup) null);
                inflate2.findViewById(C0000R.id.pincode_old_passwd_row).setVisibility(8);
                inflate2.findViewById(C0000R.id.pincode_username_row).setVisibility(8);
                c2.a(inflate2);
                com.estrongs.android.ui.b.ag a3 = c2.a();
                a3.getWindow().setSoftInputMode(5);
                return a3;
            case 109:
            case 112:
            case 114:
                com.estrongs.android.ui.b.aq c3 = new com.estrongs.android.ui.b.aq(this).a(C0000R.string.lbl_input_password).b(C0000R.string.confirm_ok, new fk(this, i)).c(C0000R.string.confirm_cancel, new fj(this));
                try {
                    layoutInflater = com.estrongs.android.pop.esclasses.e.a(FileExplorerActivity.E());
                } catch (Exception e3) {
                    layoutInflater = null;
                }
                if (layoutInflater == null) {
                    layoutInflater = com.estrongs.android.pop.esclasses.e.a(this);
                }
                View inflate3 = layoutInflater.inflate(C0000R.layout.net_pincode, (ViewGroup) null);
                inflate3.findViewById(C0000R.id.pincode_username_row).setVisibility(8);
                inflate3.findViewById(C0000R.id.pincode_old_passwd_row).setVisibility(8);
                inflate3.findViewById(C0000R.id.pincode_confirm_passwd_row).setVisibility(8);
                c3.a(inflate3);
                com.estrongs.android.ui.b.ag a4 = c3.a();
                a4.getWindow().setSoftInputMode(5);
                return a4;
        }
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

    @Override // android.app.Activity
    protected void onPrepareDialog(int i, Dialog dialog) {
        switch (i) {
            case 107:
            case 108:
            case 109:
            case 111:
            case 112:
            case 113:
            case 114:
                dialog.findViewById(C0000R.id.pincode_username_row).setVisibility(8);
                ((EditText) dialog.findViewById(C0000R.id.pincode_new_passwd)).setText("");
                ((EditText) dialog.findViewById(C0000R.id.pincode_old_passwd)).setText("");
                ((EditText) dialog.findViewById(C0000R.id.pincode_confirm_passwd)).setText("");
                ((TextView) dialog.findViewById(C0000R.id.pincode_old_passwd_txt)).setText(((Object) getText(C0000R.string.net_passwd_old)) + " ");
                if (i == 109 || i == 112 || i == 114) {
                    ((TextView) dialog.findViewById(C0000R.id.pincode_new_passwd_txt)).setVisibility(8);
                } else {
                    ((TextView) dialog.findViewById(C0000R.id.pincode_new_passwd_txt)).setText(((Object) getText(C0000R.string.net_passwd_new)) + " ");
                }
                ((TextView) dialog.findViewById(C0000R.id.pincode_confirm_passwd_txt)).setText(((Object) getText(C0000R.string.net_passwd_confirm)) + " ");
                return;
            case FTPReply.RESTART_MARKER /* 110 */:
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESPreferenceActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
