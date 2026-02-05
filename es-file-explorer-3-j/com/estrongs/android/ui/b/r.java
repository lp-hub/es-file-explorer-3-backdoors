package com.estrongs.android.ui.b;

import android.app.Activity;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class r implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f1876a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ o f1877b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(o oVar, l lVar) {
        this.f1877b = oVar;
        this.f1876a = lVar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        View l;
        Activity activity;
        Activity activity2;
        Activity activity3;
        Activity activity4;
        View l2;
        Activity activity5;
        View l3;
        Activity activity6;
        View l4;
        Activity activity7;
        View l5;
        Activity activity8;
        View l6;
        Activity activity9;
        Activity activity10;
        Activity activity11;
        Activity activity12;
        View l7;
        Activity activity13;
        View l8;
        Activity activity14;
        View l9;
        Activity activity15;
        View l10;
        Activity activity16;
        if (z) {
            this.f1877b.f1871b.setChecked(false);
            l6 = this.f1877b.l(C0000R.id.number_pannel);
            l6.setVisibility(0);
            this.f1877b.e.setText((CharSequence) null);
            this.f1877b.e.setEnabled(false);
            EditText editText = this.f1877b.e;
            activity9 = this.f1877b.ad;
            editText.setBackgroundDrawable(com.estrongs.android.ui.theme.al.a(activity9).a(C0000R.drawable.popupbox_input_bg_50));
            this.f1877b.e.setPadding(6, 0, 0, 0);
            EditText editText2 = this.f1877b.e;
            activity10 = this.f1877b.ad;
            editText2.setHintTextColor(com.estrongs.android.ui.theme.al.a(activity10).d(C0000R.color.popupbox_input_hint_disable_text));
            this.f1877b.c.setEnabled(true);
            this.f1877b.c.requestFocus();
            EditText editText3 = this.f1877b.c;
            activity11 = this.f1877b.ad;
            editText3.setBackgroundDrawable(com.estrongs.android.ui.theme.al.a(activity11).a(C0000R.drawable.popupbox_input_bg));
            this.f1877b.c.setPadding(6, 0, 0, 0);
            EditText editText4 = this.f1877b.c;
            activity12 = this.f1877b.ad;
            editText4.setHintTextColor(com.estrongs.android.ui.theme.al.a(activity12).d(C0000R.color.popupbox_input_hint_text));
            l7 = this.f1877b.l(C0000R.id.append1);
            activity13 = this.f1877b.ad;
            ((TextView) l7).setTextColor(com.estrongs.android.ui.theme.al.a(activity13).d(C0000R.color.popupbox_content_text));
            l8 = this.f1877b.l(C0000R.id.number);
            activity14 = this.f1877b.ad;
            ((TextView) l8).setTextColor(com.estrongs.android.ui.theme.al.a(activity14).d(C0000R.color.popupbox_content_text));
            l9 = this.f1877b.l(C0000R.id.append2);
            activity15 = this.f1877b.ad;
            ((TextView) l9).setTextColor(com.estrongs.android.ui.theme.al.a(activity15).d(C0000R.color.popupbox_content_text_disable));
            l10 = this.f1877b.l(C0000R.id.number2);
            activity16 = this.f1877b.ad;
            ((TextView) l10).setTextColor(com.estrongs.android.ui.theme.al.a(activity16).d(C0000R.color.popupbox_content_text_disable));
            return;
        }
        this.f1877b.f1871b.setChecked(true);
        l = this.f1877b.l(C0000R.id.number_pannel);
        l.setVisibility(8);
        this.f1877b.c.setText((CharSequence) null);
        this.f1877b.c.setEnabled(false);
        EditText editText5 = this.f1877b.c;
        activity = this.f1877b.ad;
        editText5.setBackgroundDrawable(com.estrongs.android.ui.theme.al.a(activity).a(C0000R.drawable.popupbox_input_bg_50));
        EditText editText6 = this.f1877b.c;
        activity2 = this.f1877b.ad;
        editText6.setHintTextColor(com.estrongs.android.ui.theme.al.a(activity2).d(C0000R.color.popupbox_input_hint_disable_text));
        this.f1877b.c.setPadding(6, 0, 0, 0);
        this.f1877b.e.setEnabled(true);
        this.f1877b.e.requestFocus();
        EditText editText7 = this.f1877b.e;
        activity3 = this.f1877b.ad;
        editText7.setBackgroundDrawable(com.estrongs.android.ui.theme.al.a(activity3).a(C0000R.drawable.popupbox_input_bg));
        this.f1877b.e.setPadding(6, 0, 0, 0);
        EditText editText8 = this.f1877b.e;
        activity4 = this.f1877b.ad;
        editText8.setHintTextColor(com.estrongs.android.ui.theme.al.a(activity4).d(C0000R.color.popupbox_input_hint_text));
        l2 = this.f1877b.l(C0000R.id.append1);
        activity5 = this.f1877b.ad;
        ((TextView) l2).setTextColor(com.estrongs.android.ui.theme.al.a(activity5).d(C0000R.color.popupbox_content_text_disable));
        l3 = this.f1877b.l(C0000R.id.number);
        activity6 = this.f1877b.ad;
        ((TextView) l3).setTextColor(com.estrongs.android.ui.theme.al.a(activity6).d(C0000R.color.popupbox_content_text_disable));
        l4 = this.f1877b.l(C0000R.id.append2);
        activity7 = this.f1877b.ad;
        ((TextView) l4).setTextColor(com.estrongs.android.ui.theme.al.a(activity7).d(C0000R.color.popupbox_content_text));
        l5 = this.f1877b.l(C0000R.id.number2);
        activity8 = this.f1877b.ad;
        ((TextView) l5).setTextColor(com.estrongs.android.ui.theme.al.a(activity8).d(C0000R.color.popupbox_content_text));
    }
}
