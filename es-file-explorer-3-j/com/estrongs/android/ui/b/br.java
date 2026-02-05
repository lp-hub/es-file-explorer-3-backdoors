package com.estrongs.android.ui.b;

import android.app.Activity;
import android.app.Dialog;
import android.text.InputFilter;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class br {

    /* renamed from: a, reason: collision with root package name */
    Activity f1674a;

    /* renamed from: b, reason: collision with root package name */
    Dialog f1675b;
    EditText c;
    boolean d = false;
    boolean e = false;
    boolean f = true;
    by g = null;
    String h;

    public br(Activity activity, Dialog dialog, String str) {
        this.f1674a = activity;
        this.f1675b = dialog;
        a(true);
        this.h = str;
        this.c = new EditText(activity);
        this.c.setTextSize(1, 18.0f);
        this.c.setBackgroundResource(C0000R.drawable.popupbox_input_bg);
        int a2 = com.estrongs.android.ui.d.a.a(activity, 6.0f);
        this.c.setPadding(a2, 0, a2, 0);
        this.c.setTextColor(com.estrongs.android.ui.theme.al.a(activity).d(C0000R.color.popupbox_content_text));
        this.c.setSingleLine();
        this.c.setOnKeyListener(new bs(this));
        this.c.setFilters(new InputFilter[]{new bt(this, 255)});
        this.c.addTextChangedListener(new bu(this));
    }

    public void a(by byVar) {
        this.g = byVar;
    }

    public void a(boolean z) {
        this.e = z;
        this.d = !this.e;
    }

    public boolean a() {
        boolean z;
        String trim = this.c.getText().toString().trim().trim();
        if (trim.getBytes().length > 255) {
            com.estrongs.android.ui.view.z.a(this.f1674a, this.f1674a.getString(C0000R.string.msg_filename_too_long), 0).show();
            return false;
        }
        if (trim.length() < 1) {
            com.estrongs.android.ui.view.z.a(this.f1674a, this.f1674a.getString(C0000R.string.msg_filename_is_empty), 0).show();
            return false;
        }
        if (this.f && !com.estrongs.fs.c.d.c(trim)) {
            com.estrongs.android.ui.view.z.a(this.f1674a, this.f1674a.getString(C0000R.string.msg_filename_has_spec_char), 0).show();
            return false;
        }
        if (this.d) {
            String[] strArr = {"AUX", "CLOCK$", "CON", "NUL", "PRN", "Thumbs.db"};
            int i = 0;
            while (true) {
                if (i >= strArr.length) {
                    z = true;
                    break;
                }
                if (trim.equals(strArr[i])) {
                    z = false;
                    break;
                }
                i++;
            }
            if (z && trim.length() == 4 && ((trim.startsWith("COM") || trim.startsWith("LPT")) && Character.isDigit(Character.valueOf(trim.charAt(3)).charValue()))) {
                z = false;
            }
            if (z && !com.estrongs.fs.c.d.c(trim)) {
                z = false;
            }
            if (!z) {
                com.estrongs.android.ui.view.z.a(this.f1674a, this.f1674a.getString(C0000R.string.msg_name_is_not_allowed), 0).show();
                return false;
            }
        }
        if (this.g != null) {
            this.g.a(trim);
        }
        this.f1675b.dismiss();
        return true;
    }

    public View b() {
        return this.c;
    }

    public void b(boolean z) {
        this.d = z;
    }

    public void c() {
        if (this.h != null) {
            this.c.setText(this.h);
            if (this.h.contains(".") && this.e) {
                this.c.setSelection(0, this.h.lastIndexOf("."));
            } else {
                this.c.selectAll();
            }
        }
    }
}
