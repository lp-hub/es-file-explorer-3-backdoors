package com.estrongs.android.ui.b;

import android.app.Activity;
import android.content.Context;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class bz {

    /* renamed from: a, reason: collision with root package name */
    private ag f1684a;

    /* renamed from: b, reason: collision with root package name */
    private Context f1685b;
    private boolean c;

    public bz(Context context, String str, String str2, boolean z) {
        this.f1685b = context;
        this.c = z;
        b(new com.estrongs.android.ui.view.b((Activity) context, str, str2));
        a(com.estrongs.android.util.ak.bi(str));
    }

    public bz(Context context, String str, boolean z) {
        this.f1685b = context;
        this.c = z;
        b(new com.estrongs.android.ui.view.b((Activity) context, str));
        a(str);
    }

    private void a(com.estrongs.android.ui.view.b bVar) {
        bVar.a(new ca(this));
    }

    private void a(String str) {
        if ("ftpes".equalsIgnoreCase(str)) {
            str = "ftps";
        }
        String upperCase = str.toUpperCase();
        String string = this.f1685b.getString(C0000R.string.new_ftp_server_title, upperCase);
        if (!this.c) {
            string = this.f1685b.getString(C0000R.string.edit_ftp_server_title, upperCase);
        }
        this.f1684a.setTitle(string);
    }

    private void b(com.estrongs.android.ui.view.b bVar) {
        a(bVar);
        this.f1684a = new aq(this.f1685b).a(bVar.an()).b(C0000R.string.confirm_ok, new cc(this, bVar)).c(C0000R.string.confirm_cancel, new cb(this)).a();
    }

    public void a() {
        this.f1684a.show();
    }
}
