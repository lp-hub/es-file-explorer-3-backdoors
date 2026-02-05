package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class as extends com.estrongs.android.ui.b.ag {

    /* renamed from: a, reason: collision with root package name */
    private EditText f596a;

    /* renamed from: b, reason: collision with root package name */
    private CheckBox f597b;
    private boolean c;

    public as(Context context, boolean z, boolean z2) {
        super(context);
        this.c = true;
        this.c = z;
        View inflate = com.estrongs.android.pop.esclasses.e.a(context).inflate(C0000R.layout.password_prompt_dialog, (ViewGroup) null);
        this.f597b = (CheckBox) inflate.findViewById(C0000R.id.cbxRemember);
        this.f597b.setOnCheckedChangeListener(new at(this));
        if (z2) {
            this.f597b.setVisibility(0);
        } else {
            this.f597b.setVisibility(8);
        }
        this.f596a = (EditText) inflate.findViewById(C0000R.id.etPassword);
        int inputType = this.f596a.getInputType();
        CheckBox checkBox = (CheckBox) inflate.findViewById(C0000R.id.cbxShowPassword);
        checkBox.setVisibility(0);
        checkBox.setOnCheckedChangeListener(new au(this, inputType));
        this.f596a.setHint("");
        setContentView(inflate);
        setTitle(C0000R.string.lbl_input_password);
    }

    public String a() {
        String obj = this.f596a.getText().toString();
        if (!this.c) {
            this.f596a.setText("");
        }
        return obj;
    }

    public boolean b() {
        return this.c;
    }
}
