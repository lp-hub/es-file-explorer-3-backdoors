package com.estrongs.android.ui.b;

import android.app.Activity;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.impl.pcs.PcsFileSystem;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ac implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1618a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ y f1619b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(y yVar, String str) {
        this.f1619b = yVar;
        this.f1618a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        Activity activity;
        Activity activity2;
        Activity activity3;
        Activity activity4;
        String str;
        String str2;
        try {
            y yVar = this.f1619b;
            activity3 = this.f1619b.c;
            yVar.a(activity3.getString(C0000R.string.cloud_share_make_url), false);
            String c = com.estrongs.fs.impl.i.b.c(this.f1618a);
            if (c == null) {
                throw new NetFsException("Network error", null);
            }
            this.f1619b.f = this.f1618a;
            if (com.estrongs.android.util.ak.aq(this.f1618a)) {
                String e = PcsFileSystem.e(c);
                if (e != null) {
                    this.f1619b.i = "http://www.estrongs.com/esshare?s=" + com.estrongs.android.util.aw.a(e, false).replace(' ', '_').replace('/', '-');
                }
                String str3 = "http://www.estrongs.com/esshare?s=" + com.estrongs.android.util.aw.a(c, false).replace(' ', '_').replace('/', '-');
                this.f1619b.h = str3;
                String e2 = PcsFileSystem.e(str3);
                if (e2 == null) {
                    this.f1619b.g = str3;
                } else {
                    this.f1619b.g = e2;
                }
            } else {
                this.f1619b.h = c;
                this.f1619b.g = c;
            }
            y yVar2 = this.f1619b;
            activity4 = this.f1619b.c;
            yVar2.a(activity4.getString(C0000R.string.action_share_via), true);
            str = this.f1619b.e;
            if (com.estrongs.fs.impl.i.b.n(str)) {
                FileExplorerActivity E = FileExplorerActivity.E();
                com.estrongs.fs.d a2 = com.estrongs.fs.d.a();
                str2 = this.f1619b.e;
                String str4 = (String) a2.j(str2).getExtra(NetFileInfo.PUBLIC_SHARE);
                if (str4 == null || str4.length() == 0) {
                    E.a(new ad(this, E));
                }
            }
        } catch (NetFsException e3) {
            e3.printStackTrace();
            y yVar3 = this.f1619b;
            activity = this.f1619b.c;
            yVar3.a(activity.getString(C0000R.string.path_create_error), false);
            activity2 = this.f1619b.c;
            com.estrongs.android.pop.utils.a.a(activity2, C0000R.string.path_create_error);
        }
    }
}
