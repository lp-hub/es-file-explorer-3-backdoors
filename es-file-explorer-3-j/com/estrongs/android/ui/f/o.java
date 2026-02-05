package com.estrongs.android.ui.f;

import android.content.Context;
import android.content.Intent;
import android.view.MenuItem;
import com.estrongs.android.pop.app.RecommAcitivity;
import com.estrongs.android.pop.utils.bs;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ag;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ f f2218a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(f fVar) {
        this.f2218a = fVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        Context context;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        Context context6;
        if (bs.a()) {
            context3 = this.f2218a.f2204b;
            Intent a2 = ag.a("com.baidu.appsearch", context3.getPackageManager());
            if (a2 == null) {
                context6 = this.f2218a.f2204b;
                ((FileExplorerActivity) context6).c("http://m.baidu.com/app?from=1000364e&pu=osname@esbrowser");
            } else {
                a2.addFlags(268435456);
                try {
                    context5 = this.f2218a.f2204b;
                    ((FileExplorerActivity) context5).a(a2);
                } catch (Exception e) {
                    context4 = this.f2218a.f2204b;
                    ((FileExplorerActivity) context4).c("http://m.baidu.com/app?from=1000364e&pu=osname@esbrowser");
                }
            }
        } else {
            context = this.f2218a.f2204b;
            Intent intent = new Intent(context, (Class<?>) RecommAcitivity.class);
            intent.setFlags(268435456);
            context2 = this.f2218a.f2204b;
            ((FileExplorerActivity) context2).a(intent);
        }
        this.f2218a.a(true);
        com.estrongs.android.util.a a3 = com.estrongs.android.util.a.a();
        if (a3 != null) {
            a3.a("Recommend_Show", "Recommend_Show");
        }
        return true;
    }
}
