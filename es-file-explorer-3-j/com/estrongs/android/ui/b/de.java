package com.estrongs.android.ui.b;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class de extends ag {

    /* renamed from: a, reason: collision with root package name */
    private ProgressBar f1729a;

    /* renamed from: b, reason: collision with root package name */
    private TextView f1730b;
    private boolean c;
    private View d;

    public de(Context context) {
        super(context);
        this.c = true;
        a();
    }

    public static de a(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2) {
        return a(context, charSequence, charSequence2, z, z2, null);
    }

    public static de a(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2, DialogInterface.OnCancelListener onCancelListener) {
        de deVar = new de(context);
        deVar.setTitle(charSequence);
        deVar.setMessage(charSequence2);
        deVar.a(z);
        deVar.setCancelable(z2);
        deVar.setOnCancelListener(onCancelListener);
        deVar.show();
        return deVar;
    }

    private void a() {
        this.d = com.estrongs.android.pop.esclasses.e.a(this.mContext).inflate(C0000R.layout.dialog_progress, (ViewGroup) null);
        b();
        setContentView(this.d);
    }

    private void b() {
        View view;
        if (this.c) {
            View findViewById = this.d.findViewById(C0000R.id.panel_roll);
            this.d.findViewById(C0000R.id.panel_horizontal).setVisibility(4);
            view = findViewById;
        } else {
            View findViewById2 = this.d.findViewById(C0000R.id.panel_horizontal);
            this.d.findViewById(C0000R.id.panel_roll).setVisibility(4);
            view = findViewById2;
        }
        view.setVisibility(0);
        this.f1730b = (TextView) view.findViewById(C0000R.id.message);
        this.f1729a = (ProgressBar) view.findViewById(C0000R.id.progress);
    }

    public void a(boolean z) {
        this.c = z;
        b();
    }

    @Override // com.estrongs.android.ui.b.ag
    public void setMessage(CharSequence charSequence) {
        this.f1730b.setText(charSequence);
    }
}
