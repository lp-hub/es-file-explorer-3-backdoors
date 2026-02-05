package com.estrongs.android.ui.b;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.guesture.ESGesturePanel;

/* loaded from: classes.dex */
public class cd {

    /* renamed from: a, reason: collision with root package name */
    private ag f1691a;

    /* renamed from: b, reason: collision with root package name */
    private Context f1692b;
    private ESGesturePanel c;
    private String d;

    public cd(Context context, String str) {
        this.f1692b = context;
        this.d = str;
        c();
    }

    private void c() {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f1692b).inflate(C0000R.layout.dialog_new_gesture_page2, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(C0000R.id.label);
        if (this.d == null) {
            textView.setVisibility(8);
        } else {
            textView.setText(this.f1692b.getString(C0000R.string.gesture_action_prefix, com.estrongs.android.ui.guesture.d.a(this.f1692b, this.d)));
        }
        this.c = (ESGesturePanel) inflate.findViewById(C0000R.id.gesture);
        this.c.f2231a = true;
        this.c.a(new ce(this));
        this.f1691a = new aq(this.f1692b).a(inflate).a(C0000R.string.gesture_button_add).a();
    }

    public void a() {
        this.f1691a.show();
    }

    public void a(DialogInterface.OnDismissListener onDismissListener) {
        this.f1691a.setOnDismissListener(onDismissListener);
    }

    public void b() {
        this.f1691a.dismiss();
    }
}
