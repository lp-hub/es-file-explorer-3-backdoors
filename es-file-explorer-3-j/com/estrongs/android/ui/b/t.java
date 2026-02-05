package com.estrongs.android.ui.b;

import android.content.Context;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    private ag f1880a;

    /* renamed from: b, reason: collision with root package name */
    private Context f1881b;

    public t(Context context) {
        this.f1881b = context;
        c();
    }

    private void c() {
        this.f1880a = new aq(this.f1881b).a(new String[]{"ftp", "sftp", "ftps", "webdav"}, -1, new u(this)).a(C0000R.string.action_new).c(false).a();
    }

    public boolean a() {
        return this.f1880a != null && this.f1880a.isShowing();
    }

    public void b() {
        if (this.f1880a != null) {
            this.f1880a.show();
        }
    }
}
