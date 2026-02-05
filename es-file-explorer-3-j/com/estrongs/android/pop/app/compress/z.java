package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.io.File;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class z {
    private Button A;
    private String[] B;

    /* renamed from: b */
    com.estrongs.io.archive.i f633b;
    private com.estrongs.android.ui.b.ag c;
    private Context d;
    private String e;
    private List<String> f;
    private View g;
    private String i;
    private String j;
    private RadioGroup k;
    private View l;
    private View m;
    private TextView p;
    private TextView q;
    private TextView r;
    private TextView s;
    private TextView t;
    private TextView u;
    private com.estrongs.io.a.a.b v;
    private View y;
    private View z;
    private EditText h = null;
    private com.estrongs.io.archive.d n = null;

    /* renamed from: a */
    boolean f632a = false;
    private ProgressBar o = null;
    private EditText w = null;
    private CheckBox x = null;
    private int C = 2;

    public z(Context context, String str, ArrayList<String> arrayList) {
        this.d = context;
        this.e = str;
        this.f = arrayList;
        if (arrayList == null || arrayList.size() < 1) {
            com.estrongs.android.ui.view.z.a(this.d, this.d.getText(C0000R.string.grid_item_not_selected), 0).show();
        } else {
            c();
        }
    }

    public static /* synthetic */ int a(z zVar, int i) {
        zVar.C = i;
        return i;
    }

    private View a(int i) {
        return this.g.findViewById(i);
    }

    private void c() {
        this.g = com.estrongs.android.pop.esclasses.e.a(this.d).inflate(C0000R.layout.archive_dialog, (ViewGroup) null);
        this.c = new com.estrongs.android.ui.b.aq(this.d).a(C0000R.string.app_zip_viewer).a(this.g).b(C0000R.string.confirm_ok, new ad(this)).c(C0000R.string.confirm_cancel, new ac(this)).a(new aa(this)).a();
        this.h = (EditText) a(C0000R.id.filename);
        this.k = (RadioGroup) a(C0000R.id.archive_type);
        this.k.setOnCheckedChangeListener(new af(this));
        this.m = a(C0000R.id.archive_edit_panel);
        this.l = a(C0000R.id.archive_progress_panel);
        RadioButton radioButton = (RadioButton) a(C0000R.id.archive_type_gzip);
        if (this.f.size() > 1) {
            radioButton.setVisibility(8);
        } else {
            File file = new File(this.f.get(0));
            if (file == null || !file.exists()) {
                a();
            } else if (file.isDirectory()) {
                radioButton.setVisibility(8);
            } else {
                radioButton.setVisibility(0);
            }
        }
        d();
        e();
    }

    private void d() {
        this.y = a(C0000R.id.ll_password_panel);
        this.w = (EditText) a(C0000R.id.etPassword);
        this.w.setHint("");
        int inputType = this.w.getInputType();
        CheckBox checkBox = (CheckBox) a(C0000R.id.cbxShowPassword);
        checkBox.setVisibility(0);
        checkBox.setOnCheckedChangeListener(new ag(this, inputType));
        this.x = (CheckBox) a(C0000R.id.chxDeleteSourceFile);
        this.z = a(C0000R.id.ll_compress_level_panel);
        this.A = (Button) a(C0000R.id.spinnerCompressLevel);
        this.B = this.d.getResources().getStringArray(C0000R.array.zip_levels);
        this.A.setText(this.B[this.C]);
        this.A.setOnClickListener(new ah(this));
    }

    private void e() {
        String name = this.f.size() > 1 ? new File(this.e).getName() : new File(this.f.get(0)).getName();
        if (name == null || name.length() < 1) {
            name = "allfiles";
        }
        this.h.setText(name);
        this.h.setSelection(0, name.length());
    }

    private void f() {
        this.f632a = true;
        this.t = (TextView) a(C0000R.id.nums_completed);
        this.u = (TextView) a(C0000R.id.nums_of_files);
        this.p = (TextView) a(C0000R.id.file_compressing);
        this.o = (ProgressBar) a(C0000R.id.archive_total_progress_bar);
        this.s = (TextView) a(C0000R.id.precent_completed);
        this.q = (TextView) a(C0000R.id.total_size_compressed);
        this.r = (TextView) a(C0000R.id.total_size);
        this.c.setSingleButton(this.d.getString(C0000R.string.confirm_cancel), new al(this));
        this.n = new com.estrongs.io.archive.d(this.d, null, this.d.getString(C0000R.string.msg_exception_compressing_file));
        this.n.b(this.t);
        this.n.c(this.u);
        this.n.a(this.p);
        this.n.a(this.o);
        this.n.d(this.s);
        this.n.e(this.q);
        this.n.f(this.r);
        this.v = new com.estrongs.io.a.a.b(this.n);
    }

    public void g() {
        this.m.setVisibility(8);
        this.l.setVisibility(0);
        ((TextView) a(C0000R.id.message)).setText(this.d.getString(C0000R.string.task_progress_message_name, i()));
        this.c.setTitle(MessageFormat.format(this.d.getString(C0000R.string.msg_compressing_file), this.i, this.j));
        if (!this.f632a) {
            f();
        }
        new ab(this, "ArchiveCompress").start();
    }

    public String h() {
        String str = this.e;
        if (!str.endsWith("/")) {
            str = str + "/";
        }
        String str2 = str + i();
        if (!str2.contains("..")) {
            return str2;
        }
        try {
            return new File(str2).getCanonicalPath();
        } catch (IOException e) {
            return str2;
        }
    }

    private String i() {
        String str = this.i;
        if (str == null || str.trim().length() < 1) {
            str = "auto_name";
        }
        return str + "." + this.j;
    }

    public static /* synthetic */ String[] m(z zVar) {
        return zVar.B;
    }

    public static /* synthetic */ int n(z zVar) {
        return zVar.C;
    }

    public static /* synthetic */ Button o(z zVar) {
        return zVar.A;
    }

    public void a() {
        this.c.dismiss();
    }

    public void b() {
        this.c.show();
    }
}
