package com.estrongs.android.pop.app.imageviewer;

import android.net.Uri;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class av implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ au f955a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public av(au auVar) {
        this.f955a = auVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Uri uri;
        boolean b2;
        Uri uri2;
        String string = this.f955a.f954a.getString(C0000R.string.msg_picture_not_found);
        ViewImage21 viewImage21 = this.f955a.f954a;
        uri = this.f955a.f954a.s;
        b2 = viewImage21.b(uri);
        if (!b2) {
            StringBuilder append = new StringBuilder().append(string).append(": ");
            uri2 = this.f955a.f954a.s;
            string = append.append(uri2.getPath()).toString();
        }
        com.estrongs.android.ui.view.z.a(this.f955a.f954a, string, 1).show();
        this.f955a.f954a.finish();
    }
}
