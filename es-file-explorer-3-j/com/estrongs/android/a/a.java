package com.estrongs.android.a;

import android.app.Activity;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.ag;
import com.estrongs.android.util.ak;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class a extends ag {

    /* renamed from: a, reason: collision with root package name */
    public static final Map<Long, a> f233a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    String f234b;
    Activity c;
    DialogInterface.OnClickListener d;
    protected d e;
    private EditText f;
    private EditText g;
    private CheckBox h;
    private CheckBox i;
    private CompoundButton.OnCheckedChangeListener j;

    public a(Activity activity, String str) {
        super(activity);
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = new b(this);
        this.d = new c(this);
        this.c = activity;
        this.f234b = str;
        setTitle(((Object) activity.getText(C0000R.string.progress_connecting_to)) + " " + ak.B(str));
        View inflate = com.estrongs.android.pop.esclasses.e.a(activity).inflate(C0000R.layout.new_username_pasword, (ViewGroup) null);
        setContentView(inflate);
        this.f = (EditText) inflate.findViewById(C0000R.id.username);
        this.g = (EditText) inflate.findViewById(C0000R.id.password);
        this.h = (CheckBox) inflate.findViewById(C0000R.id.use_anonymous);
        this.i = (CheckBox) inflate.findViewById(C0000R.id.save_changed);
        this.f.setSingleLine();
        this.h.setOnCheckedChangeListener(this.j);
        setConfirmButton(activity.getString(C0000R.string.confirm_ok), this.d);
        setCancelButton(activity.getString(C0000R.string.confirm_cancel), null);
    }

    public void a(int i) {
        View findViewById = findViewById(C0000R.id.opt_1);
        View findViewById2 = findViewById(C0000R.id.opt_2);
        if (findViewById != null) {
            findViewById.setVisibility(i);
        }
        if (findViewById2 != null) {
            findViewById2.setVisibility(i);
        }
    }

    public void a(d dVar) {
        this.e = dVar;
    }
}
