package com.estrongs.android.ui.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import java.net.MalformedURLException;
import jcifs.smb.SmbException;
import jcifs.smb.SmbFile;

/* loaded from: classes.dex */
public class cq {

    /* renamed from: a, reason: collision with root package name */
    private ag f1709a;

    /* renamed from: b, reason: collision with root package name */
    private View f1710b;
    private Context c;
    private String k;
    private EditText d = null;
    private EditText e = null;
    private EditText f = null;
    private EditText g = null;
    private EditText h = null;
    private CheckBox i = null;
    private boolean j = false;
    private CompoundButton.OnCheckedChangeListener l = new cr(this);

    public cq(Context context) {
        this.c = context;
        c();
        d();
    }

    public cq(Context context, String str, String str2) {
        this.c = context;
        c();
        a(str, str2);
        d();
    }

    private void a(String str, String str2) {
        this.k = str;
        if (str != null) {
            String str3 = null;
            if (str != null) {
                this.j = true;
                if (com.estrongs.android.util.ak.F(str)) {
                    String B = com.estrongs.android.util.ak.B(str);
                    int length = B.length() - 1;
                    str3 = B.charAt(length) == '/' ? B.substring(6, length) : B.substring(6);
                }
                String bf = com.estrongs.android.util.ak.bf(str);
                if (bf != null) {
                    this.d.setText(bf);
                }
                this.e.setText(str3);
                String x = com.estrongs.android.util.ak.x(str);
                String y = com.estrongs.android.util.ak.y(str);
                if (x == null || x.length() <= 0) {
                    this.i.setChecked(true);
                } else {
                    this.f.setText(x);
                    this.i.setChecked(false);
                }
                if (y != null && y.length() > 0) {
                    this.g.setText(y);
                }
                if (str2 == null || str2.length() <= 0) {
                    return;
                }
                this.h.setText(str2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        if (com.estrongs.android.util.ak.aU(str)) {
            return false;
        }
        if (!com.estrongs.android.util.ak.F(str)) {
            return true;
        }
        try {
            return new SmbFile(com.estrongs.fs.impl.o.b.a(str)).list() != null;
        } catch (RuntimeException e) {
            e.printStackTrace();
            return true;
        } catch (MalformedURLException e2) {
            return false;
        } catch (SmbException e3) {
            return false;
        }
    }

    private void c() {
        this.f1710b = com.estrongs.android.pop.esclasses.e.a(this.c).inflate(C0000R.layout.new_smb_server, (ViewGroup) null);
        this.d = (EditText) this.f1710b.findViewById(C0000R.id.network_domain);
        this.e = (EditText) this.f1710b.findViewById(C0000R.id.location);
        this.f = (EditText) this.f1710b.findViewById(C0000R.id.label_username);
        this.g = (EditText) this.f1710b.findViewById(C0000R.id.password);
        this.i = (CheckBox) this.f1710b.findViewById(C0000R.id.use_anonymous);
        this.h = (EditText) this.f1710b.findViewById(C0000R.id.display);
        this.i.setOnCheckedChangeListener(this.l);
        this.i.setChecked(false);
        this.e.requestFocus();
    }

    private void d() {
        this.f1709a = new aq(this.c).a(this.f1710b).b(C0000R.string.confirm_ok, new ct(this)).c(C0000R.string.confirm_cancel, new cs(this)).a(C0000R.string.new_server_ftp_server).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        String trim;
        if (!this.i.isChecked() && ((trim = this.f.getText().toString().trim()) == null || trim.length() == 0)) {
            com.estrongs.android.ui.view.z.a(this.c, this.c.getResources().getString(C0000R.string.username_empty), 1).show();
            return;
        }
        String f = f();
        if (f == null) {
            com.estrongs.android.ui.view.z.a(this.c, this.c.getResources().getString(C0000R.string.network_location_null), 1).show();
        } else {
            com.estrongs.android.a.t.a(this.c, C0000R.string.add_server_title, C0000R.string.add_server);
            new Thread(new cu(this, f)).start();
        }
    }

    private String f() {
        String trim = this.e.getText().toString().trim();
        while (true) {
            if (!trim.startsWith("/") && !trim.startsWith("\\")) {
                break;
            }
            trim = trim.substring(1);
        }
        if (trim.length() == 0) {
            return null;
        }
        String trim2 = this.d.getText().toString().trim();
        if (trim2 == null || trim2.length() == 0) {
            trim2 = null;
        }
        String str = "smb://" + trim;
        if (com.estrongs.android.util.ak.aU(str)) {
            return str;
        }
        if (str.charAt(str.length() - 1) != '/') {
            str = str + "/";
        }
        StringBuffer stringBuffer = new StringBuffer(str);
        if (!this.i.isChecked()) {
            String trim3 = this.f.getText().toString().trim();
            String obj = this.g.getText().toString();
            if (trim3 == null || trim3.length() == 0) {
                com.estrongs.android.ui.view.z.a(this.c, this.c.getResources().getString(C0000R.string.username_empty), 1).show();
                return null;
            }
            if (trim2 == null) {
                stringBuffer.insert(6, com.estrongs.android.util.ak.aW(trim3) + ":" + com.estrongs.android.util.ak.aW(obj) + "@");
            } else {
                stringBuffer.insert(6, com.estrongs.android.util.ak.aW(trim2) + ";" + com.estrongs.android.util.ak.aW(trim3) + ":" + com.estrongs.android.util.ak.aW(obj) + "@");
            }
        }
        return stringBuffer.toString();
    }

    public boolean a() {
        return this.f1709a != null && this.f1709a.isShowing();
    }

    public void b() {
        this.f1709a.show();
    }
}
