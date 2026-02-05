package com.estrongs.android.ui.pcs;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ d f2359a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(d dVar) {
        this.f2359a = dVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        EditText editText;
        EditText editText2;
        Context context2;
        boolean a2;
        Context context3;
        Activity activity = null;
        context = this.f2359a.e;
        if (context instanceof Activity) {
            context3 = this.f2359a.e;
            activity = (Activity) context3;
        }
        if (activity == null) {
            activity = FileExplorerActivity.E();
        }
        if (activity != null) {
            editText = this.f2359a.f;
            String obj = editText.getText().toString();
            editText2 = this.f2359a.g;
            String obj2 = editText2.getText().toString();
            if (obj.length() <= 0 || obj2.length() <= 0) {
                context2 = this.f2359a.e;
                com.estrongs.android.ui.view.z.a(context2, C0000R.string.pcs_login_empty, 0).show();
                return;
            }
            if (TextUtils.isDigitsOnly(obj)) {
                a2 = this.f2359a.a(obj);
                if (a2) {
                    this.f2359a.b(activity);
                    return;
                }
            }
            this.f2359a.a(activity);
        }
    }
}
