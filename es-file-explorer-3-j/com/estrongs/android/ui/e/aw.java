package com.estrongs.android.ui.e;

import android.content.Intent;
import android.net.Uri;
import android.view.MenuItem;

/* loaded from: classes.dex */
class aw implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ w f1994a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aw(w wVar) {
        this.f1994a = wVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("http://wappass.baidu.com/passport/?getpass"));
        try {
            this.f1994a.f1968b.startActivity(intent);
            return false;
        } catch (Exception e) {
            return false;
        }
    }
}
