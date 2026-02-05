package com.estrongs.android.ui.view;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.TableRow;
import com.baidu.sapi2.loginshare.Utils;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.view.cq;
import com.estrongs.fs.FileSystemException;
import com.estrongs.old.fs.impl.sftp.OldSFtpFileSystem;
import org.apache.commons.net.ftp.FTPSClient;

/* loaded from: classes.dex */
public class b extends cq {
    private View.OnClickListener A;
    private String B;
    private String C;
    private int D;
    private int E;

    /* renamed from: a, reason: collision with root package name */
    boolean f2626a;

    /* renamed from: b, reason: collision with root package name */
    boolean f2627b;
    boolean c;
    public View.OnClickListener d;
    public View.OnClickListener e;
    private EditText f;
    private EditText g;
    private EditText h;
    private EditText i;
    private EditText j;
    private CheckBox k;
    private CheckBox l;
    private RadioButton m;
    private RadioButton n;
    private RadioButton o;
    private Button p;
    private boolean q;
    private String r;
    private TableRow s;
    private TableRow t;
    private TableRow u;
    private TableRow v;
    private TableRow w;
    private String x;
    private CompoundButton.OnCheckedChangeListener y;
    private Handler z;

    public b(Activity activity, String str) {
        super(activity);
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = false;
        this.s = null;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.f2626a = false;
        this.f2627b = false;
        this.c = false;
        this.y = new d(this);
        this.z = new Handler();
        this.A = new e(this);
        this.d = new g(this);
        this.e = new h(this);
        this.B = null;
        this.C = null;
        this.D = 0;
        this.E = 0;
        a(activity);
        a(str);
        b((String) null);
    }

    public b(Activity activity, String str, String str2) {
        super(activity);
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = false;
        this.s = null;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.f2626a = false;
        this.f2627b = false;
        this.c = false;
        this.y = new d(this);
        this.z = new Handler();
        this.A = new e(this);
        this.d = new g(this);
        this.e = new h(this);
        this.B = null;
        this.C = null;
        this.D = 0;
        this.E = 0;
        this.x = str;
        a(activity);
        a(com.estrongs.android.util.ak.bi(str));
        b(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        com.estrongs.android.pop.q.a(this.ad).b(str, this.m.isChecked());
        com.estrongs.android.pop.q.a(this.ad).a(str, this.D);
    }

    private String d() {
        String replace;
        String str;
        int i;
        int i2;
        String trim = this.f.getText().toString().trim();
        if (trim.length() == 0) {
            return null;
        }
        if (this.f2627b) {
            replace = trim.replace("ftps://", "").replace("ftpes://", "");
        } else if (this.f2626a) {
            replace = trim.replace("sftp://", "");
        } else if (this.c) {
            String replace2 = trim.replace(Utils.http, "");
            replace = replace2.contains(Utils.https) ? replace2.replace(Utils.https, "") : replace2;
        } else {
            replace = trim.replace("ftp://", "");
        }
        boolean isChecked = ((CheckBox) l(C0000R.id.enable_ssl)).isChecked();
        if (this.c) {
            isChecked = ((CheckBox) l(C0000R.id.use_https)).isChecked();
        }
        if (isChecked) {
            i = jcifs.https.Handler.DEFAULT_HTTPS_PORT;
            str = "webdavs://";
        } else {
            str = "webdav://";
            i = 80;
        }
        StringBuilder sb = new StringBuilder();
        if (this.f2626a) {
            str = "sftp://";
        } else if (!this.c) {
            str = this.f2627b ? !this.o.isChecked() ? "ftps://" : "ftpes://" : "ftp://";
        }
        String sb2 = sb.append(str).append(replace).toString();
        if (com.estrongs.android.util.ak.aU(sb2)) {
            return sb2;
        }
        if (!this.f2626a && !this.c && this.f2627b) {
        }
        try {
            i2 = Integer.parseInt(this.g.getText().toString().trim());
        } catch (NumberFormatException e) {
            i2 = this.f2626a ? 22 : this.c ? i : this.f2627b ? 990 : 21;
        }
        StringBuffer stringBuffer = new StringBuffer(sb2);
        if (i2 != (this.f2626a ? 22 : this.c ? i : this.f2627b ? 990 : 21)) {
            int indexOf = sb2.indexOf(47, com.estrongs.android.util.ak.aT(sb2));
            if (indexOf != -1) {
                stringBuffer.insert(indexOf, ":" + i2);
            } else {
                stringBuffer.append(":" + i2);
            }
        }
        if (sb2.charAt(sb2.length() - 1) != '/') {
            stringBuffer.append("/");
        }
        if (!this.k.isChecked() || this.c) {
            String trim2 = this.h.getText().toString().trim();
            String obj = this.i.getText().toString();
            if (trim2 == null || trim2.length() == 0) {
                if (this.c) {
                    return stringBuffer.toString();
                }
                z.a(this.ad, n(C0000R.string.username_empty), 1).show();
                return null;
            }
            stringBuffer.insert(com.estrongs.android.util.ak.aT(sb2), com.estrongs.android.util.ak.aW(trim2) + ":" + com.estrongs.android.util.ak.aW(obj) + "@");
        }
        return stringBuffer.toString();
    }

    private void d(String str) {
        if (com.estrongs.android.pop.q.a(this.ad).f(str)) {
            this.m.setChecked(true);
            this.n.setChecked(false);
        } else {
            this.m.setChecked(false);
            this.n.setChecked(true);
        }
        this.D = com.estrongs.android.pop.q.a(this.ad).h(str);
        this.p.setText(com.estrongs.android.util.g.f2695a[this.D]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        try {
            com.estrongs.old.fs.a n = com.estrongs.fs.d.n(com.estrongs.android.util.ak.bi(this.C));
            if (this.f2626a && n != null && (n instanceof OldSFtpFileSystem)) {
                this.B = ((OldSFtpFileSystem) n).j(this.C);
                if (!this.B.equals("/")) {
                    if (this.B.endsWith("/")) {
                        this.B = this.B.substring(0, this.B.length() - 1);
                    }
                    String i = com.estrongs.android.util.ak.i(this.C);
                    if (i == null) {
                        i = "";
                    }
                    this.C = this.C.substring(0, this.C.length() - i.length()) + this.B + i;
                    return e(this.C);
                }
            }
        } catch (FileSystemException e) {
            e.printStackTrace();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e(String str) {
        if (com.estrongs.android.util.ak.aU(str)) {
            return false;
        }
        try {
            if (this.c) {
                return com.estrongs.fs.impl.q.b.a(str, (com.estrongs.fs.h) null, (com.estrongs.a.b.l<String>) null) != null;
            }
            com.estrongs.old.fs.a n = com.estrongs.fs.d.n(com.estrongs.android.util.ak.bi(str));
            if (n != null) {
                try {
                    TypedMap typedMap = new TypedMap();
                    typedMap.put("server", com.estrongs.android.util.ak.h(str));
                    typedMap.put("mode", Boolean.valueOf(this.m.isChecked()));
                    typedMap.put("encode", com.estrongs.android.util.g.a(this.D));
                    n.a(typedMap);
                } catch (Exception e) {
                }
                n.a(str, (com.estrongs.fs.h) null);
            }
            return true;
        } catch (FileSystemException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.estrongs.android.view.cq
    protected int a() {
        return C0000R.layout.new_ftp_server;
    }

    public void a(Activity activity) {
        this.f = (EditText) l(C0000R.id.location);
        this.g = (EditText) l(C0000R.id.port);
        this.h = (EditText) l(C0000R.id.username);
        this.i = (EditText) l(C0000R.id.password);
        this.k = (CheckBox) l(C0000R.id.use_anonymous);
        this.l = (CheckBox) l(C0000R.id.use_https);
        this.j = (EditText) l(C0000R.id.display);
        this.m = (RadioButton) l(C0000R.id.mode_passive);
        this.n = (RadioButton) l(C0000R.id.mode_active);
        this.p = (Button) l(C0000R.id.setencoding);
        this.p.setOnClickListener(this.A);
        this.k.setOnCheckedChangeListener(this.y);
        this.s = (TableRow) l(C0000R.id.ftp_mode_table_row);
        this.t = (TableRow) l(C0000R.id.ftp_anonymous_table_row);
        this.u = (TableRow) l(C0000R.id.ftps_encryption_table_row);
        this.v = (TableRow) l(C0000R.id.webdav_https_table_row);
        this.w = (TableRow) l(C0000R.id.ftp_encoding_table_row);
        this.o = (RadioButton) l(C0000R.id.ftps_mode_explicit);
    }

    public void a(String str) {
        if ("ftpes".equalsIgnoreCase(str)) {
            str = "ftps";
        }
        this.r = str;
        if (this.r.equals("sftp")) {
            this.f2626a = true;
            this.h.setEnabled(true);
            this.i.setEnabled(true);
            this.s.setVisibility(8);
            this.t.setVisibility(8);
            this.u.setVisibility(8);
            this.v.setVisibility(8);
            this.f.setHint("S" + ((Object) this.f.getHint()));
            return;
        }
        if (this.r.equals("ftp")) {
            if (!this.q) {
                this.m.setChecked(true);
            }
            this.u.setVisibility(8);
            this.v.setVisibility(8);
            return;
        }
        if (this.r.equals("ftps")) {
            this.f2627b = true;
            this.o.setChecked(true);
            this.g.setText(String.valueOf(FTPSClient.DEFAULT_FTPS_PORT));
            this.t.setVisibility(8);
            this.v.setVisibility(8);
            return;
        }
        if (this.r.equals("webdav") || this.r.equals("webdavs")) {
            this.c = true;
            this.f.setHint(C0000R.string.webdav_location_hint);
            this.w.setVisibility(8);
            this.s.setVisibility(8);
            this.t.setVisibility(8);
            this.u.setVisibility(8);
            if (this.r.equals("webdavs")) {
                this.l.setChecked(true);
            }
            if (this.l.isChecked()) {
                this.g.setText(String.valueOf(jcifs.https.Handler.DEFAULT_HTTPS_PORT));
            } else {
                this.g.setText(String.valueOf(80));
            }
            this.l.setOnCheckedChangeListener(new c(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        this.C = d();
        if (this.C == null) {
            z.a(this.ad, this.ad.getText(C0000R.string.network_location_null), 1).show();
        } else {
            com.estrongs.android.a.t.a(this.ad, C0000R.string.add_server_title, C0000R.string.add_server);
            new Thread(new i(this)).start();
        }
    }

    public void b(String str) {
        String B = com.estrongs.android.util.ak.B(this.x);
        d(this.x);
        if (B == null) {
            if (this.r.equals("sftp")) {
                this.g.setText("22");
                return;
            }
            return;
        }
        this.q = true;
        if (com.estrongs.android.util.ak.G(B)) {
            this.r = "sftp";
        }
        if (com.estrongs.android.util.ak.H(B) || com.estrongs.android.util.ak.G(B) || com.estrongs.android.util.ak.m(B) || com.estrongs.android.util.ak.p(B)) {
            B = com.estrongs.android.util.ak.a(B) + com.estrongs.android.util.ak.i(B);
        }
        this.f.setText(B);
        String v = com.estrongs.android.util.ak.v(this.x);
        String x = com.estrongs.android.util.ak.x(this.x);
        String y = com.estrongs.android.util.ak.y(this.x);
        if (v != null && v.length() > 0) {
            this.g.setText(v);
        } else if (v == null && this.r.equals("sftp")) {
            this.g.setText("22");
        }
        if (x == null || x.length() <= 0) {
            d(com.estrongs.android.util.ak.B(this.x));
            this.k.setChecked(true);
        } else {
            d(this.x);
            this.h.setText(x);
            this.k.setChecked(false);
        }
        if (y != null && y.length() > 0) {
            this.i.setText(y);
        }
        if (str == null || str.length() <= 0) {
            return;
        }
        this.j.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        if (this.ag != null) {
            this.ag.a(Boolean.FALSE);
        }
    }
}
