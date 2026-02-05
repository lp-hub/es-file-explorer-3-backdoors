package com.estrongs.android.pop.app;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.view.View;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class hs implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RecommItemDetailAcitivity f882a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hs(RecommItemDetailAcitivity recommItemDetailAcitivity) {
        this.f882a = recommItemDetailAcitivity;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i;
        com.estrongs.android.pop.view.utils.v vVar;
        com.estrongs.android.pop.view.utils.v vVar2;
        com.estrongs.android.pop.view.utils.v vVar3;
        com.estrongs.android.pop.view.utils.v vVar4;
        com.estrongs.android.pop.view.utils.v vVar5;
        com.estrongs.android.pop.view.utils.v vVar6;
        com.estrongs.android.pop.view.utils.v vVar7;
        com.estrongs.android.pop.view.utils.v vVar8;
        com.estrongs.android.pop.view.utils.v vVar9;
        com.estrongs.android.pop.view.utils.v vVar10;
        com.estrongs.android.pop.view.utils.v vVar11;
        com.estrongs.android.pop.view.utils.v vVar12;
        com.estrongs.android.pop.view.utils.v vVar13;
        com.estrongs.android.pop.view.utils.v vVar14;
        com.estrongs.android.pop.view.utils.v vVar15;
        com.estrongs.android.pop.view.utils.v vVar16;
        com.estrongs.android.pop.view.utils.v vVar17;
        i = this.f882a.f;
        vVar = this.f882a.d;
        if (vVar.q != 1) {
            vVar3 = this.f882a.d;
            if (vVar3.q != 5) {
                vVar4 = this.f882a.d;
                if (vVar4.q != 0) {
                    vVar13 = this.f882a.d;
                    if (vVar13.q != 2) {
                        vVar14 = this.f882a.d;
                        if (vVar14.q == 3) {
                            vVar17 = this.f882a.d;
                            this.f882a.startActivity(b.a(com.estrongs.android.pop.view.utils.n.a(vVar17.f)));
                        } else {
                            vVar15 = this.f882a.d;
                            if (vVar15.q == 4) {
                                com.estrongs.android.pop.view.utils.n b2 = com.estrongs.android.pop.view.utils.n.b();
                                vVar16 = this.f882a.d;
                                b2.c(vVar16);
                            }
                        }
                        view.invalidate();
                    }
                }
                vVar5 = this.f882a.d;
                if (vVar5.v != 3) {
                    vVar7 = this.f882a.d;
                    if (vVar7.e.startsWith("market://")) {
                        vVar11 = this.f882a.d;
                        vVar11.y = true;
                        Intent intent = new Intent("android.intent.action.VIEW");
                        vVar12 = this.f882a.d;
                        intent.setData(Uri.parse(vVar12.e));
                        try {
                            this.f882a.startActivity(intent);
                        } catch (ActivityNotFoundException e) {
                            com.estrongs.android.ui.view.z.a(this.f882a, this.f882a.getText(C0000R.string.market_not_found), 1).show();
                        }
                    } else {
                        vVar8 = this.f882a.d;
                        vVar8.u = 0L;
                        vVar9 = this.f882a.d;
                        vVar9.q = 5;
                        this.f882a.b();
                        com.estrongs.android.pop.view.utils.n b3 = com.estrongs.android.pop.view.utils.n.b();
                        vVar10 = this.f882a.d;
                        b3.c(vVar10);
                    }
                } else {
                    PackageManager packageManager = this.f882a.getPackageManager();
                    vVar6 = this.f882a.d;
                    Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(vVar6.f);
                    if (launchIntentForPackage != null) {
                        this.f882a.startActivity(launchIntentForPackage);
                    }
                }
                view.invalidate();
            }
        }
        this.f882a.b(i);
        vVar2 = this.f882a.d;
        vVar2.q = 0;
        this.f882a.b();
        view.invalidate();
    }
}
