package com.estrongs.android.pop.app.a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class x extends com.estrongs.android.ui.b.ag {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f433a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(a aVar, Context context) {
        super(context);
        this.f433a = aVar;
        setTitle(getString(C0000R.string.input_setting));
        View inflate = com.estrongs.android.pop.esclasses.e.a(context).inflate(C0000R.layout.settings_checkbox, (ViewGroup) null);
        CheckBox checkBox = (CheckBox) inflate.findViewById(C0000R.id.checkbox);
        boolean ay = com.estrongs.android.pop.q.a(context).ay();
        checkBox.setChecked(ay);
        ((TextView) inflate.findViewById(C0000R.id.text)).setText(context.getString(C0000R.string.audio_visiable_more_than_500));
        setContentView(inflate);
        inflate.setOnClickListener(new y(this, aVar, checkBox));
        setConfirmButton(getString(C0000R.string.confirm_ok), new z(this, aVar, checkBox, ay, context));
        setCancelButton(getString(C0000R.string.confirm_cancel), new aa(this, aVar));
    }
}
