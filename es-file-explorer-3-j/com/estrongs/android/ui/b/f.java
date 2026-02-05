package com.estrongs.android.ui.b;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.baidu.sapi2.callback.LoginCallBack;
import com.estrongs.android.pop.C0000R;
import java.util.HashMap;

/* loaded from: classes.dex */
public class f extends ag {

    /* renamed from: a, reason: collision with root package name */
    Handler f1807a;

    /* renamed from: b, reason: collision with root package name */
    PackageManager f1808b;
    protected boolean c;
    i d;
    private HashMap<String, Drawable> e;

    public f(Context context) {
        super(context);
        this.c = false;
        setTitle(C0000R.string.app_add_check_list);
        a(context);
        setSingleButton(context.getResources().getString(C0000R.string.progress_done), null);
        this.e = new HashMap<>();
        this.f1808b = context.getPackageManager();
        c();
        this.f1807a = new Handler();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        return com.estrongs.android.pop.q.b(this.mContext, str);
    }

    private void b() {
        ListView listView = (ListView) findViewById(C0000R.id.user_list);
        this.d = new i(this, false);
        listView.setAdapter((ListAdapter) this.d);
    }

    private void c() {
        findViewById(C0000R.id.load_progress).setVisibility(0);
        new Thread(new g(this)).start();
    }

    protected int a() {
        return C0000R.layout.app_select_dialog;
    }

    protected void a(Context context) {
        View inflate = com.estrongs.android.pop.esclasses.e.a(context).inflate(a(), (ViewGroup) null);
        inflate.setMinimumWidth(LoginCallBack.REQUEST_LOGINPROTECT);
        setContentView(inflate);
        b();
    }

    public void a(boolean z) {
        this.c = z;
    }

    @Override // com.estrongs.android.ui.b.ag, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
    }

    @Override // com.estrongs.android.ui.b.ag, android.app.Dialog
    public void show() {
        super.show();
        if (this.c) {
            this.c = false;
            c();
        }
    }
}
