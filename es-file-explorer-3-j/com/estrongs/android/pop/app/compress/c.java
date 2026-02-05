package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import com.estrongs.fs.FileSystemException;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ View f602a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f603b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar, View view) {
        this.f603b = aVar;
        this.f602a = view;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        boolean z;
        EditText editText;
        String str;
        Context context;
        String str2;
        String str3;
        String str4;
        List list;
        int i3;
        EditText editText2;
        k kVar;
        k kVar2;
        String str5;
        k kVar3;
        int i4;
        EditText editText3;
        String str6;
        String str7;
        String trim;
        String str8;
        boolean z2;
        String str9;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        Context context6;
        String str10;
        String str11;
        String str12;
        Context context7;
        Context context8;
        EditText editText4;
        i2 = this.f603b.g;
        if (i2 == 3) {
            a aVar = this.f603b;
            editText3 = this.f603b.e;
            aVar.h = editText3.getText().toString();
            a aVar2 = this.f603b;
            str6 = this.f603b.h;
            if (str6 == null) {
                trim = "";
            } else {
                str7 = this.f603b.h;
                trim = str7.trim();
            }
            aVar2.h = trim;
            str8 = this.f603b.h;
            if (str8.trim().length() < 1) {
                context7 = this.f603b.f574a;
                context8 = this.f603b.f574a;
                com.estrongs.android.ui.view.z.a(context7, context8.getText(C0000R.string.msg_no_filename_input), 0).show();
                editText4 = this.f603b.e;
                editText4.setText("/sdcard/");
                return;
            }
            try {
                str11 = this.f603b.h;
                if (com.estrongs.fs.impl.local.d.a(str11)) {
                    z2 = true;
                } else {
                    str12 = this.f603b.h;
                    z2 = com.estrongs.fs.impl.local.d.a(str12, true);
                }
            } catch (FileSystemException e) {
                z2 = false;
            }
            if (!z2) {
                context5 = this.f603b.f574a;
                StringBuilder sb = new StringBuilder();
                context6 = this.f603b.f574a;
                StringBuilder append = sb.append(context6.getString(C0000R.string.path_create_error)).append(": ");
                str10 = this.f603b.h;
                com.estrongs.android.ui.view.z.a(context5, append.append(str10).toString(), 0).show();
                return;
            }
            str9 = this.f603b.h;
            if (!com.estrongs.fs.c.d.d(str9)) {
                context2 = this.f603b.f574a;
                StringBuilder sb2 = new StringBuilder();
                context3 = this.f603b.f574a;
                StringBuilder append2 = sb2.append(context3.getResources().getString(C0000R.string.msg_file_has_spec_char));
                context4 = this.f603b.f574a;
                com.estrongs.android.ui.view.z.a(context2, append2.append(context4.getResources().getString(C0000R.string.spec_char)).toString(), 0).show();
                return;
            }
        }
        z = this.f603b.l;
        if (z) {
            this.f603b.p = new k(this.f603b);
            kVar = this.f603b.p;
            kVar.c = ((CheckBox) this.f602a.findViewById(C0000R.id.cbxAskMore)).isChecked();
            kVar2 = this.f603b.p;
            str5 = this.f603b.h;
            kVar2.f614b = str5;
            kVar3 = this.f603b.p;
            i4 = this.f603b.g;
            kVar3.f613a = i4;
            this.f603b.o = true;
        } else {
            editText = this.f603b.f;
            if (editText != null) {
                editText2 = this.f603b.f;
                str = editText2.getText().toString();
            } else {
                str = null;
            }
            context = this.f603b.f574a;
            str2 = this.f603b.m;
            str3 = this.f603b.i;
            str4 = this.f603b.h;
            list = this.f603b.n;
            i3 = this.f603b.g;
            new l(context, str2, str3, str4, str, list, true, false, i3, null).b();
        }
        this.f603b.b();
    }
}
