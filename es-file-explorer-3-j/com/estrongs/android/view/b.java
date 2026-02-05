package com.estrongs.android.view;

import android.content.Intent;
import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.spfs.OAuthConstants;
import org.simpleframework.xml.strategy.Name;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f2759a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f2759a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean n;
        try {
            if (com.estrongs.android.pop.utils.y.a("com.baidu.appsearch")) {
                n = this.f2759a.n();
                if (n) {
                    Intent intent = new Intent("com.baidu.appsearch.extinvoker.LAUNCH");
                    intent.putExtra(Name.MARK, "1002320z");
                    intent.putExtra("func", OAuthConstants.VERSION_2);
                    intent.addFlags(32);
                    intent.putExtra("backop", "0");
                    this.f2759a.ad.sendBroadcast(intent);
                } else {
                    com.estrongs.android.ui.h.c b2 = com.estrongs.android.ui.h.a.a(this.f2759a.ad).b();
                    if (b2 != null) {
                        b2.a("http://dl.ops.baidu.com/appsearch_AndroidPhone_1002320z.apk");
                        com.estrongs.android.ui.h.h hVar = new com.estrongs.android.ui.h.h(this.f2759a.ad, b2);
                        hVar.a(false);
                        hVar.a(this.f2759a.m(C0000R.string.text_appsearch_old_version) + ":");
                        hVar.a();
                    }
                }
            } else {
                com.estrongs.android.ui.h.c b3 = com.estrongs.android.ui.h.a.a(this.f2759a.ad).b();
                if (b3 != null) {
                    b3.a("http://dl.ops.baidu.com/appsearch_AndroidPhone_1002320z.apk");
                    com.estrongs.android.ui.h.h hVar2 = new com.estrongs.android.ui.h.h(this.f2759a.ad, b3);
                    hVar2.a(false);
                    hVar2.a();
                }
            }
        } catch (Exception e) {
        }
    }
}
