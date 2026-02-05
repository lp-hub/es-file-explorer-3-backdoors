package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.estrongs.android.pop.C0000R;
import java.io.File;
import java.util.List;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private Context f574a;

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.android.ui.b.ag f575b;
    private com.estrongs.android.ui.theme.al c;
    private File d;
    private EditText e;
    private EditText f;
    private int g;
    private String h;
    private String i;
    private View.OnClickListener j;
    private j k;
    private boolean l;
    private String m;
    private List<String> n;
    private boolean o = false;
    private k p;

    public a(Context context, boolean z, String str, String str2, List<String> list, j jVar) {
        this.i = null;
        this.f574a = context;
        this.c = com.estrongs.android.ui.theme.al.a(this.f574a);
        this.l = z;
        this.m = str;
        this.i = str2;
        this.n = list;
        this.k = jVar;
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str) {
        int lastIndexOf;
        return (!str.matches(".*part[0-9]+\\.rar") || (lastIndexOf = str.lastIndexOf("part")) <= 0) ? str : str.substring(0, lastIndexOf);
    }

    private void c() {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f574a).inflate(C0000R.layout.archive_extract_edit_dialog, (ViewGroup) null);
        this.f575b = new com.estrongs.android.ui.b.aq(this.f574a).a(C0000R.string.dialog_extract_to).a(inflate).b(C0000R.string.confirm_ok, new c(this, inflate)).c(C0000R.string.confirm_cancel, new b(this)).a();
        this.j = new d(this, inflate);
        this.d = new File(this.m);
        RadioButton radioButton = (RadioButton) inflate.findViewById(C0000R.id.toArchiveNameAsPath);
        String a2 = a(a(this.d.getName()));
        radioButton.setText(com.estrongs.fs.c.d.a(a2) + "/");
        radioButton.setOnClickListener(this.j);
        ((RadioButton) inflate.findViewById(C0000R.id.toCurrentPath)).setOnClickListener(this.j);
        ((RadioButton) inflate.findViewById(C0000R.id.toPathAssinged)).setOnClickListener(this.j);
        ((RadioGroup) inflate.findViewById(C0000R.id.output_path_type)).setOnClickListener(this.j);
        this.e = (EditText) inflate.findViewById(C0000R.id.filename);
        this.e.setText("/sdcard/");
        this.e.setVisibility(8);
        this.e.setOnClickListener(new f(this));
        if (this.i == null) {
            this.i = com.estrongs.android.util.g.f2695a[0];
        }
        Button button = (Button) inflate.findViewById(C0000R.id.btnCharset);
        button.setOnClickListener(this.j);
        button.setText(com.estrongs.android.util.b.a(this.f574a, com.estrongs.android.util.b.a(this.i)));
        this.g = 2;
        this.h = this.d.getAbsoluteFile().getParentFile().getPath() + "/" + com.estrongs.fs.c.d.a(a2);
    }

    public void a() {
        this.f575b.show();
    }

    public void b() {
        if (this.o) {
            this.f575b.setOnDismissListener(new i(this));
        }
        this.f575b.dismiss();
    }
}
