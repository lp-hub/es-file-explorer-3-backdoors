package com.estrongs.android.ui.c;

import android.app.Activity;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.baidu.sapi2.loginshare.Utils;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.utils.bs;
import com.estrongs.android.ui.b.ag;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.view.z;
import com.estrongs.android.util.aw;

/* loaded from: classes.dex */
public class l extends ag {

    /* renamed from: a, reason: collision with root package name */
    private EditText f1904a;

    public l(Activity activity) {
        super(activity);
        setTitle(C0000R.string.action_download);
        this.f1904a = new EditText(activity);
        this.f1904a.setHint(C0000R.string.input_download_url_hint);
        this.f1904a.setBackgroundResource(C0000R.drawable.popupbox_input_bg);
        int a2 = com.estrongs.android.ui.d.a.a(activity, 6.0f);
        this.f1904a.setPadding(a2, 0, a2, 0);
        this.f1904a.setTextColor(al.a(activity).d(C0000R.color.popupbox_content_text));
        this.f1904a.setSingleLine();
        LinearLayout linearLayout = new LinearLayout(this.mContext);
        linearLayout.setFocusable(false);
        int a3 = com.estrongs.android.ui.d.a.a(this.mContext, 20.0f);
        linearLayout.setPadding(a3, a3 / 2, a3, a3 / 2);
        linearLayout.addView(this.f1904a, new LinearLayout.LayoutParams(-1, -2));
        setContentView(linearLayout);
        if (bs.a()) {
            setConfirmButton(activity.getText(C0000R.string.download_now), new m(this, activity));
            setCancelButton(activity.getText(C0000R.string.download_pcs), new n(this, activity));
        } else {
            setSingleButton(activity.getText(C0000R.string.download_now), new p(this, activity));
        }
        requestInputMethod();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        boolean z;
        if (aw.b((CharSequence) str)) {
            String lowerCase = str.toLowerCase();
            z = lowerCase.startsWith("ftp://") || lowerCase.startsWith("ftps://") || lowerCase.startsWith("sftp://") || lowerCase.startsWith(Utils.http) || lowerCase.startsWith(Utils.https);
        } else {
            z = false;
        }
        if (!z) {
            z.a(getContext(), C0000R.string.url_invalid, 0).show();
        }
        return z;
    }
}
