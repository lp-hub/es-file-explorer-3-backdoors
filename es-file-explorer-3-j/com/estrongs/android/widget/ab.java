package com.estrongs.android.widget;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.TranslateAnimation;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.view.bu;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class ab extends ah {

    /* renamed from: a, reason: collision with root package name */
    protected List<com.estrongs.fs.g> f2882a;

    /* renamed from: b, reason: collision with root package name */
    protected boolean f2883b;
    View c;
    View d;
    TranslateAnimation e;
    TranslateAnimation f;
    TranslateAnimation g;
    TranslateAnimation h;
    private bu p;
    private View q;
    private RealViewSwitcher r;
    private LinearLayout s;
    private boolean t;
    private AdapterView.OnItemClickListener u;

    public ab(Activity activity, an anVar, boolean z) {
        super(activity, anVar);
        this.f2882a = new LinkedList();
        this.t = true;
        this.u = new ad(this);
        this.t = z;
        this.s = (LinearLayout) findViewById(C0000R.id.tool_switcher);
        this.s.setBackgroundDrawable(this.themeManager.a(C0000R.drawable.disk_analyse_content_right_bg02));
        if (z) {
            d();
        } else {
            this.s.setVisibility(8);
            this.r.removeViewAt(1);
        }
        this.i.a(this.u);
        setSingleButton(getString(C0000R.string.confirm_cancel), null);
    }

    private void d() {
        if (this.p == null) {
            this.p = new ac(this, this.j, (ViewGroup) this.q, null, null);
            this.p.j(com.estrongs.android.ui.theme.al.a(this.mContext).d(C0000R.color.popupbox_content_text));
            this.p.a(11);
            this.p.a(this.u);
            this.p.a(this.o);
            this.p.a("SP://");
        }
    }

    private void e() {
        this.c = findViewById(C0000R.id.tool_local);
        this.c.setBackgroundDrawable(this.themeManager.a(C0000R.drawable.addressbar_tab_left));
        this.c.setOnClickListener(new af(this));
    }

    private void f() {
        this.d = findViewById(C0000R.id.tool_net);
        this.d.setBackgroundDrawable(this.themeManager.a(C0000R.drawable.background_globle_buttons));
        this.d.setOnClickListener(new ag(this));
    }

    @Override // com.estrongs.android.widget.ah
    protected int a() {
        return C0000R.layout.image_picker;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.widget.ah
    public void a(Context context) {
        super.a(context);
        this.q = (ViewGroup) findViewById(C0000R.id.gridview_files_net);
        this.r = (RealViewSwitcher) findViewById(C0000R.id.content_main);
        this.r.c(false);
        this.r.a(new ae(this));
        e();
        f();
    }

    public void a(boolean z) {
        this.f2883b = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.widget.ah
    public bu b() {
        return this.r.h() == 0 ? this.i : this.p;
    }

    @Override // com.estrongs.android.widget.ah
    public void b(boolean z) {
        super.b(z);
        if (this.t) {
            this.p.a(11);
            this.p.b(false);
        }
    }

    @Override // com.estrongs.android.widget.ah, com.estrongs.android.ui.b.ag, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        if (this.p != null) {
            this.p.a_();
        }
    }

    @Override // com.estrongs.android.ui.b.ag, android.app.Dialog
    public void show() {
        super.show();
        if (this.f2883b) {
            if (this.i.Y() == null) {
                this.i.K();
            }
            this.i.g();
            if (this.t) {
                this.p.g();
            }
            this.f2883b = false;
        }
    }
}
