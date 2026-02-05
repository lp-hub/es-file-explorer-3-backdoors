package com.estrongs.android.ui.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import com.estrongs.android.ui.b.ag;
import com.estrongs.android.ui.b.aq;

/* loaded from: classes.dex */
public class CustomListPreference extends android.preference.ListPreference {

    /* renamed from: a, reason: collision with root package name */
    private ag f2391a;

    /* renamed from: b, reason: collision with root package name */
    private int f2392b;

    public CustomListPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private int b() {
        return findIndexOfValue(getValue());
    }

    protected void a(aq aqVar) {
        if (getEntries() == null || getEntries() == null) {
            throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
        }
        this.f2392b = b();
        aqVar.a(getEntries(), this.f2392b, new a(this));
    }

    protected boolean a() {
        return false;
    }

    @Override // android.preference.DialogPreference
    public Dialog getDialog() {
        return this.f2391a;
    }

    @Override // android.preference.DialogPreference, android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        super.onClick(dialogInterface, i);
        dialogInterface.dismiss();
    }

    @Override // android.preference.ListPreference, android.preference.DialogPreference
    protected void onDialogClosed(boolean z) {
        if (!z || this.f2392b < 0 || getEntryValues() == null) {
            return;
        }
        String obj = getEntryValues()[this.f2392b].toString();
        if (callChangeListener(obj)) {
            setValue(obj);
        }
    }

    @Override // android.preference.DialogPreference
    protected void showDialog(Bundle bundle) {
        aq a2 = new aq(getContext()).a(getDialogTitle()).a(getPositiveButtonText(), this);
        View onCreateDialogView = onCreateDialogView();
        if (onCreateDialogView != null) {
            onBindDialogView(onCreateDialogView);
            a2.a(onCreateDialogView);
        } else {
            a2.b(getDialogMessage());
        }
        a(a2);
        ag a3 = a2.a();
        this.f2391a = a3;
        if (bundle != null) {
            a3.onRestoreInstanceState(bundle);
        }
        if (a()) {
            a3.requestInputMethod();
        }
        a3.setOnDismissListener(this);
        a3.show();
    }
}
