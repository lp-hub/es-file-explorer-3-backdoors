package com.estrongs.android.ui.b;

import android.widget.EditText;
import android.widget.RadioButton;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o extends com.estrongs.android.view.cq {

    /* renamed from: a, reason: collision with root package name */
    RadioButton f1870a;

    /* renamed from: b, reason: collision with root package name */
    RadioButton f1871b;
    EditText c;
    EditText d;
    EditText e;
    EditText f;
    final /* synthetic */ l g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(l lVar, ESActivity eSActivity) {
        super(eSActivity);
        this.g = lVar;
        this.f1870a = (RadioButton) l(C0000R.id.radio_number);
        this.f1871b = (RadioButton) l(C0000R.id.radio_new);
        this.c = (EditText) l(C0000R.id.new_name_1);
        this.d = (EditText) l(C0000R.id.num_start_value);
        this.e = (EditText) l(C0000R.id.new_name_2);
        this.f = (EditText) l(C0000R.id.new_ext_name);
        l(C0000R.id.opt_1).setOnClickListener(new p(this, lVar));
        l(C0000R.id.opt_2).setOnClickListener(new q(this, lVar));
        this.f1870a.setOnCheckedChangeListener(new r(this, lVar));
        this.f1871b.setOnCheckedChangeListener(new s(this, lVar));
        this.f1870a.setChecked(true);
    }

    @Override // com.estrongs.android.view.cq
    protected int a() {
        return C0000R.layout.batch_rename;
    }
}
