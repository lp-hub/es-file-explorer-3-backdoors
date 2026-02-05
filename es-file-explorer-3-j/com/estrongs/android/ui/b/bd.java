package com.estrongs.android.ui.b;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class bd {

    /* renamed from: a, reason: collision with root package name */
    private ag f1656a;

    /* renamed from: b, reason: collision with root package name */
    private Context f1657b;
    private bg c;
    private EditText d;
    private CheckBox e;

    private bd(Context context) {
        this.f1657b = context;
        b();
    }

    public bd(Context context, String str, String str2) {
        this(context, str, str2, true);
    }

    public bd(Context context, String str, String str2, boolean z) {
        this(context);
        b(str);
        a(str2);
        this.e.setVisibility(z ? 0 : 8);
    }

    private void b() {
        LinearLayout linearLayout = (LinearLayout) com.estrongs.android.pop.esclasses.e.a(this.f1657b).inflate(C0000R.layout.dialog_pcs_backup_path, (ViewGroup) null);
        this.d = (EditText) linearLayout.findViewById(C0000R.id.input);
        this.f1656a = new aq(this.f1657b).a(linearLayout).b(C0000R.string.confirm_ok, new bf(this)).c(C0000R.string.confirm_cancel, new be(this)).a();
        this.e = (CheckBox) linearLayout.findViewById(C0000R.id.setAsDefault);
    }

    public void a() {
        this.f1656a.show();
    }

    public void a(bg bgVar) {
        this.c = bgVar;
    }

    public void a(String str) {
        if (this.d != null) {
            this.d.setText(str);
            this.d.selectAll();
        }
    }

    public void b(String str) {
        this.f1656a.setTitle(str);
    }
}
