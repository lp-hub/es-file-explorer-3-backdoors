package com.estrongs.android.ui.b;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.baidu.sapi2.loginshare.Utils;
import com.estrongs.android.pop.C0000R;
import org.json.simple.JSONObject;

/* loaded from: classes.dex */
public class cf {

    /* renamed from: a, reason: collision with root package name */
    private ag f1694a;

    /* renamed from: b, reason: collision with root package name */
    private View f1695b;
    private Context c;
    private ImageView e;
    private TextView f;
    private int i;
    private String j;
    private Button q;
    private CheckBox d = null;
    private String g = null;
    private Handler h = new Handler();
    private boolean k = false;
    private String l = null;
    private int m = 0;
    private String[] n = {"s3.amazonaws.com", "s3-us-west-2.amazonaws.com", "s3-us-west-1.amazonaws.com", "s3-eu-west-1.amazonaws.com", "s3-ap-southeast-1.amazonaws.com", "s3-ap-northeast-1.amazonaws.com", "s3-sa-east-1.amazonaws.com"};
    private String[] o = {"US Standard", "US (Oregon)", "US (Northern California)", "EU (Ireland)", "Asia (Singapore)", "Asia (Tokyo)", "Sao Paulo"};
    private CheckBox p = null;

    public cf(Context context) {
        this.c = context;
        b();
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str, String str2, String str3) {
        if (!com.estrongs.android.util.ak.aU(str) && com.estrongs.android.util.ak.an(str)) {
            try {
                if ("s3".equals(this.g)) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("key", str2);
                    jSONObject.put("secret", str3);
                    jSONObject.put("host", this.n[this.m]);
                    if (this.d.isChecked()) {
                        jSONObject.put("http", Utils.https);
                    } else {
                        jSONObject.put("http", Utils.http);
                    }
                    com.estrongs.fs.impl.i.b.a("s3", "s3fakeuser", "fake", jSONObject);
                } else if ("yandex".equals(this.g)) {
                    String b2 = com.estrongs.android.util.ak.b(str2, str3, com.estrongs.android.util.ak.Y(str));
                    String a2 = com.estrongs.android.util.ak.a(b2);
                    String v = com.estrongs.android.util.ak.v(b2);
                    boolean startsWith = b2.startsWith("webdavs://");
                    if (v == null) {
                        v = startsWith ? "443" : "80";
                    }
                    com.estrongs.fs.impl.q.b.a(str2, a2, v);
                }
                return com.estrongs.fs.impl.i.b.b(str);
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return false;
    }

    private String b(String str, String str2) {
        if (this.g.equals("vdisk")) {
            str = this.d.isChecked() ? "s_" + str : "l_" + str;
        } else if ("s3".equals(this.g)) {
            return com.estrongs.android.util.ak.a(this.g, "s3fakeuser", "fake", "/");
        }
        return com.estrongs.android.util.ak.a(this.g, str, str2, "/");
    }

    private void b() {
        this.f1695b = com.estrongs.android.pop.esclasses.e.a(this.c).inflate(C0000R.layout.window_new_network, (ViewGroup) null);
        this.e = (ImageView) this.f1695b.findViewById(C0000R.id.icon_network);
        this.f = (TextView) this.f1695b.findViewById(C0000R.id.label_network);
        this.d = (CheckBox) this.f1695b.findViewById(C0000R.id.nn_is_weibo_account);
        this.q = (Button) this.f1695b.findViewById(C0000R.id.s3_set_location);
        this.q.setText(this.o[0]);
        this.q.setOnClickListener(new ch(this, new cg(this)));
    }

    private String c(String str) {
        return str != null ? str.replaceAll("&", "&amp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("'", "&apos;").replaceAll("\"", "&quot;") : str;
    }

    private void c() {
        this.f1694a = new aq(this.c).a(this.f1695b).b(C0000R.string.confirm_ok, new ck(this)).c(C0000R.string.confirm_cancel, new cj(this)).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        boolean equals = "s3".equals(this.g);
        String obj = ((EditText) this.f1695b.findViewById(C0000R.id.edittext_email_new_network)).getText().toString();
        String obj2 = ((EditText) this.f1695b.findViewById(C0000R.id.edittext_passwd_new_network)).getText().toString();
        String obj3 = ((EditText) this.f1695b.findViewById(C0000R.id.edittext_displayas_new_network)).getText().toString();
        if (obj == null || obj2 == null || obj.length() == 0 || obj2.length() == 0) {
            com.estrongs.android.ui.view.z.a(this.c, this.c.getText(C0000R.string.network_args_empty), 1).show();
            return;
        }
        if (!"ubuntu".equals(this.g) && !"s3".equals(this.g) && !"yandex".equals(this.g) && !"vdisk".equals(this.g) && !d(obj)) {
            com.estrongs.android.ui.view.z.a(this.c, this.c.getText(C0000R.string.wrong_email), 1).show();
            return;
        }
        if ("kanbox".equals(this.g) && (obj2.length() < 6 || obj2.length() > 34)) {
            com.estrongs.android.ui.view.z.a(this.c, this.c.getText(C0000R.string.password_len_wrong), 1).show();
            return;
        }
        if ("sugarsync".equals(this.g)) {
            obj = c(obj);
            obj2 = c(obj2);
        }
        String b2 = b(obj, obj2);
        com.estrongs.android.a.t.a(this.c, C0000R.string.add_server_title, C0000R.string.add_server);
        new Thread(new cl(this, b2, obj, obj2, equals, obj3)).start();
    }

    private boolean d(String str) {
        String[] split = str.split("@");
        if (split.length != 2) {
            return false;
        }
        String[] split2 = split[1].split("\\.");
        return split2.length >= 2 && split2[split2.length + (-1)].matches("[a-zA-z]+");
    }

    public cf a(int i, String str, String str2) {
        this.i = i;
        this.j = str;
        this.g = str2;
        this.e.setImageResource(i);
        this.f.setText(str);
        if (str2.equals("vdisk")) {
            View findViewById = this.f1695b.findViewById(C0000R.id.nn_sina_weibo_account_row);
            if (findViewById != null) {
                findViewById.setVisibility(0);
            }
        } else if (str2.equals("s3")) {
            View findViewById2 = this.f1695b.findViewById(C0000R.id.nn_sina_weibo_account_row);
            if (findViewById2 != null) {
                findViewById2.setVisibility(0);
            }
            this.d.setText(C0000R.string.network_enable_ssl);
            View findViewById3 = this.f1695b.findViewById(C0000R.id.nn_s3_location_row);
            if (findViewById3 != null) {
                findViewById3.setVisibility(0);
            }
        }
        return this;
    }

    public void a() {
        this.f1694a.show();
    }

    public void a(String str) {
        this.k = true;
        this.l = str;
    }

    public void a(String str, String str2) {
        if (str != null) {
            ((EditText) this.f1695b.findViewById(C0000R.id.edittext_email_new_network)).setText(str);
        }
        if (str2 != null) {
            ((EditText) this.f1695b.findViewById(C0000R.id.edittext_displayas_new_network)).setText(str2);
        }
    }

    public cf b(String str) {
        this.f1694a.setTitle(str);
        return this;
    }
}
