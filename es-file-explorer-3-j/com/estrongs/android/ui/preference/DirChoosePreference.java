package com.estrongs.android.ui.preference;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.util.AttributeSet;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class DirChoosePreference extends EditTextPreference {

    /* renamed from: a, reason: collision with root package name */
    String f2393a;

    /* renamed from: b, reason: collision with root package name */
    private Context f2394b;

    public DirChoosePreference(Context context) {
        super(context);
        this.f2393a = null;
    }

    public DirChoosePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextPreferenceStyle);
    }

    public DirChoosePreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2393a = null;
        this.f2394b = context;
    }

    @Override // android.preference.EditTextPreference, android.preference.DialogPreference
    protected void onDialogClosed(boolean z) {
        if (this.f2393a == null || !callChangeListener(this.f2393a)) {
            return;
        }
        setText(this.f2393a);
    }

    @Override // android.preference.EditTextPreference, android.preference.DialogPreference
    protected void showDialog(Bundle bundle) {
        com.estrongs.android.widget.g gVar = new com.estrongs.android.widget.g((Activity) this.f2394b, getText(), new b(this, com.estrongs.android.pop.q.a(this.f2394b).p()), true, com.estrongs.android.pop.m.j);
        gVar.c(this.f2394b.getString(C0000R.string.confirm_cancel), (DialogInterface.OnClickListener) null);
        gVar.a(getTitle());
        gVar.b(this.f2394b.getString(C0000R.string.confirm_ok), new c(this, gVar));
        gVar.a(this);
        gVar.h();
    }
}
