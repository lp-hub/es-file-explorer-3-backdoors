package com.estrongs.android.pop.app.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.aq;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class w {

    /* renamed from: a, reason: collision with root package name */
    private int f511a;

    /* renamed from: b, reason: collision with root package name */
    private int f512b;
    protected int e;
    protected Button g;
    protected int i;
    final /* synthetic */ q j;
    protected int h = 0;
    protected List<String> f = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(q qVar, Button button, int i, int i2) {
        Context context;
        this.j = qVar;
        this.e = 0;
        this.i = i2;
        List<String> list = this.f;
        context = qVar.f503a;
        list.addAll(Arrays.asList(context.getResources().getStringArray(i)));
        button.setOnClickListener(new x(this, qVar, button));
        this.e = this.f.size();
        this.g = button;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int a() {
        return this.f.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public aq a(String[] strArr, String str, int i, int i2) {
        Context context;
        Context context2;
        context = this.j.f503a;
        View inflate = com.estrongs.android.pop.esclasses.e.a(context).inflate(C0000R.layout.search_advance_field_scope_input, (ViewGroup) null);
        Button button = (Button) inflate.findViewById(C0000R.id.search_scope_unit_min);
        Button button2 = (Button) inflate.findViewById(C0000R.id.search_scope_unit_max);
        if (strArr.length > 0) {
            this.f511a = strArr.length - 1;
            this.f512b = strArr.length - 1;
        }
        button2.setOnClickListener(new z(this, strArr, button2));
        button2.setText(strArr[this.f511a]);
        button.setOnClickListener(new ab(this, strArr, button));
        button.setText(strArr[this.f512b]);
        EditText editText = (EditText) inflate.findViewById(C0000R.id.search_scope_min);
        EditText editText2 = (EditText) inflate.findViewById(C0000R.id.search_scope_max);
        if (i > -1) {
            editText.setText("" + i);
        }
        if (i2 > -1) {
            editText2.setText("" + i2);
        }
        context2 = this.j.f503a;
        aq aqVar = new aq(context2);
        aqVar.a(str);
        aqVar.a(inflate);
        aqVar.b(C0000R.string.confirm_ok, new af(this, editText, editText2, strArr)).c(C0000R.string.confirm_cancel, new ae(this)).b(true).a(new ad(this));
        return aqVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(int i, Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i, String str, int i2, String str2) {
        String str3 = (i > 0 ? i + " " + str : "") + " - ";
        if (i2 > 0) {
            str3 = str3 + i2 + " " + str2;
        }
        this.f.add(this.f.size() - 1, str3);
        this.h = a() - 2;
        this.g.setText(this.f.get(this.h));
    }
}
