package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.baidu.sapi2.callback.LoginCallBack;
import com.estrongs.android.pop.C0000R;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ad implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ z f579a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ad(z zVar) {
        this.f579a = zVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        EditText editText;
        String str;
        Context context;
        Context context2;
        String str2;
        View view;
        RadioGroup radioGroup;
        String h;
        Context context3;
        Context context4;
        Context context5;
        String str3;
        String str4;
        z zVar = this.f579a;
        editText = this.f579a.h;
        zVar.i = editText.getText().toString();
        str = this.f579a.i;
        if (str != null) {
            str2 = this.f579a.i;
            if (str2.trim().length() >= 1) {
                view = this.f579a.g;
                radioGroup = this.f579a.k;
                this.f579a.j = ((RadioButton) view.findViewById(radioGroup.getCheckedRadioButtonId())).getText().toString();
                h = this.f579a.h();
                if (!new File(h).exists()) {
                    this.f579a.g();
                    return;
                }
                context3 = this.f579a.d;
                com.estrongs.android.a.e eVar = new com.estrongs.android.a.e(context3, new ae(this), false);
                context4 = this.f579a.d;
                eVar.setTitle(context4.getString(C0000R.string.message_overwrite));
                context5 = this.f579a.d;
                String string = context5.getString(C0000R.string.file_exists_overwrite_prompt_message);
                StringBuilder sb = new StringBuilder();
                str3 = this.f579a.i;
                StringBuilder append = sb.append(str3).append(".");
                str4 = this.f579a.j;
                eVar.setMessage(String.format(string, append.append(str4).toString()));
                eVar.show();
                return;
            }
        }
        context = this.f579a.d;
        context2 = this.f579a.d;
        com.estrongs.android.ui.view.z.a(context, context2.getString(C0000R.string.msg_no_filename_input), LoginCallBack.REQUEST_LOGINPROTECT).show();
    }
}
