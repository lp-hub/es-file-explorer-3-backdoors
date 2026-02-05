package com.estrongs.android.ui.h;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.ag;
import com.estrongs.android.ui.b.aq;

/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private Context f2248a;

    /* renamed from: b, reason: collision with root package name */
    private c f2249b;
    private ag c;
    private TextView d;
    private View e;
    private TextView f;
    private TextView g;
    private Button h;
    private ProgressBar i;
    private CheckBox j;
    private boolean l = false;
    private Handler k = new i(this);

    public h(Context context, c cVar) {
        this.f2248a = context;
        this.f2249b = cVar;
        c();
    }

    private void c() {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this.f2248a).inflate(C0000R.layout.dialog_push_item, (ViewGroup) null);
        this.e = inflate.findViewById(C0000R.id.download_page);
        this.e.setVisibility(8);
        this.d = (TextView) inflate.findViewById(C0000R.id.message);
        ImageView imageView = (ImageView) inflate.findViewById(C0000R.id.icon);
        Bitmap a2 = this.f2249b.a(this.f2248a);
        if (a2 != null) {
            imageView.setImageBitmap(a2);
        } else {
            imageView.setImageResource(C0000R.drawable.format_apk);
        }
        ((TextView) inflate.findViewById(C0000R.id.title)).setText(this.f2249b.a());
        ((TextView) inflate.findViewById(C0000R.id.summary)).setText(this.f2249b.d());
        this.h = (Button) inflate.findViewById(C0000R.id.download);
        this.h.setOnClickListener(new j(this));
        this.f = (TextView) inflate.findViewById(C0000R.id.size);
        this.g = (TextView) inflate.findViewById(C0000R.id.percentage);
        this.i = (ProgressBar) inflate.findViewById(C0000R.id.progress);
        this.j = (CheckBox) inflate.findViewById(C0000R.id.checkbox);
        if (this.f2249b.g()) {
            this.j.setVisibility(8);
        }
        this.c = new aq(this.f2248a).a(C0000R.string.prompt).a(inflate).a(new l(this)).a(C0000R.string.confirm_cancel, new k(this)).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        this.f2249b.a(this.f2248a, this.k);
        this.e.setVisibility(0);
        this.i.setProgress(0);
        this.h.setText(C0000R.string.action_stop);
        this.l = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.f2249b.h();
        this.e.setVisibility(8);
        this.h.setText(C0000R.string.action_download);
        this.l = false;
    }

    public void a() {
        this.c.show();
    }

    public void a(String str) {
        if (this.d != null) {
            this.d.setText(str);
        }
    }

    public void a(boolean z) {
        this.j.setVisibility(z ? 0 : 8);
    }

    public void b() {
        this.c.dismiss();
    }
}
