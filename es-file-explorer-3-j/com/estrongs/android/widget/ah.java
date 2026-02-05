package com.estrongs.android.widget;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.baidu.sapi2.callback.LoginCallBack;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.view.bu;

/* loaded from: classes.dex */
public class ah extends com.estrongs.android.ui.b.ag {
    protected bu i;
    protected Activity j;
    protected View k;
    protected an l;
    protected View m;
    protected TextView n;
    protected com.estrongs.android.view.br o;

    public ah(Activity activity, an anVar) {
        super(activity);
        this.o = new ai(this);
        super.setOnDismissListener(new aj(this));
        this.j = activity;
        this.l = anVar;
        a(activity);
        c();
    }

    protected int a() {
        return C0000R.layout.image_chooser;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Context context) {
        View inflate = com.estrongs.android.pop.esclasses.e.a(context).inflate(a(), (ViewGroup) null);
        inflate.setMinimumWidth(LoginCallBack.REQUEST_LOGINPROTECT);
        setContentView(inflate);
        this.k = (ViewGroup) findViewById(C0000R.id.gridview_files_local);
        this.m = (ViewGroup) findViewById(C0000R.id.panel_up);
        if (this.m != null) {
            this.m.setOnClickListener(new ak(this));
            this.n = (TextView) findViewById(C0000R.id.folder_name);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public bu b() {
        return this.i;
    }

    public void b(boolean z) {
        this.i.a(this.i.C());
        this.i.b(false);
    }

    protected void c() {
        if (this.i == null) {
            this.i = new al(this, this.j, (ViewGroup) this.k, null, null);
            this.i.j(com.estrongs.android.ui.theme.al.a(this.mContext).d(C0000R.color.popupbox_content_text));
            this.i.a(11);
            this.i.a(new am(this));
            this.i.a(this.o);
            this.i.a("gallery://local/buckets/");
        }
    }

    @Override // com.estrongs.android.ui.b.ag, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        if (this.i != null) {
            this.i.a_();
        }
    }
}
