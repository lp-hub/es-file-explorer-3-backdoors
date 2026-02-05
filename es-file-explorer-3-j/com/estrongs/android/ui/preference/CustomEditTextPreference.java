package com.estrongs.android.ui.preference;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.ag;
import com.estrongs.android.ui.b.aq;
import com.estrongs.android.ui.theme.al;

/* loaded from: classes.dex */
public class CustomEditTextPreference extends EditTextPreference {

    /* renamed from: a, reason: collision with root package name */
    private ag f2389a;

    /* renamed from: b, reason: collision with root package name */
    private EditText f2390b;
    private al c;

    public CustomEditTextPreference(Context context) {
        this(context, null);
    }

    public CustomEditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextPreferenceStyle);
    }

    public CustomEditTextPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = al.a(context);
        this.f2390b = new EditText(context, attributeSet);
        this.f2390b.setId(R.id.edit);
        this.f2390b.setEnabled(true);
        this.f2390b.setBackgroundResource(C0000R.drawable.popupbox_input_bg);
        this.f2390b.setTextColor(this.c.d(C0000R.color.popupbox_content_text));
        this.f2390b.setSelectAllOnFocus(true);
        int dimension = (int) context.getResources().getDimension(C0000R.dimen.edittext_padding_horizontal);
        this.f2390b.setPadding(dimension, 0, dimension, 0);
    }

    protected boolean a() {
        return true;
    }

    @Override // android.preference.DialogPreference
    public Dialog getDialog() {
        return this.f2389a;
    }

    @Override // android.preference.EditTextPreference
    public EditText getEditText() {
        return this.f2390b;
    }

    @Override // android.preference.EditTextPreference
    protected void onAddEditTextToDialogView(View view, EditText editText) {
        ViewGroup viewGroup = (ViewGroup) view.findViewById(C0000R.id.edittext_container);
        if (viewGroup != null) {
            viewGroup.addView(editText, -1, -2);
        }
    }

    @Override // android.preference.EditTextPreference, android.preference.DialogPreference
    protected void onBindDialogView(View view) {
        EditText editText = this.f2390b;
        editText.setText(getText());
        ViewParent parent = editText.getParent();
        if (parent != view) {
            if (parent != null) {
                ((ViewGroup) parent).removeView(editText);
            }
            onAddEditTextToDialogView(view, editText);
        }
    }

    @Override // android.preference.DialogPreference, android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        super.onClick(dialogInterface, i);
        dialogInterface.dismiss();
    }

    @Override // android.preference.DialogPreference
    protected View onCreateDialogView() {
        return com.estrongs.android.pop.esclasses.e.a(getContext()).inflate(C0000R.layout.custom_preference_dialog_edittext, (ViewGroup) null);
    }

    @Override // android.preference.EditTextPreference, android.preference.DialogPreference
    protected void onDialogClosed(boolean z) {
        if (z) {
            String obj = this.f2390b.getText().toString();
            if (callChangeListener(obj)) {
                setText(obj);
            }
        }
    }

    @Override // android.preference.EditTextPreference, android.preference.DialogPreference
    protected void showDialog(Bundle bundle) {
        aq c = new aq(getContext()).a(getDialogTitle()).b(getPositiveButtonText(), this).c(getNegativeButtonText(), this);
        View onCreateDialogView = onCreateDialogView();
        if (onCreateDialogView != null) {
            onBindDialogView(onCreateDialogView);
            c.a(onCreateDialogView);
        } else {
            c.b(getDialogMessage());
        }
        ag a2 = c.a();
        this.f2389a = a2;
        if (bundle != null) {
            a2.onRestoreInstanceState(bundle);
        }
        if (a()) {
            a2.requestInputMethod();
        }
        a2.setOnDismissListener(this);
        this.f2390b.requestFocus();
        a2.show();
    }
}
