package com.estrongs.android.ui.view;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.SparseArray;
import android.view.View;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.RecommAcitivity;

/* loaded from: classes.dex */
class ax implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ RecommendListView f2621a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ax(RecommendListView recommendListView) {
        this.f2621a = recommendListView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        com.estrongs.android.pop.view.utils.v[] vVarArr;
        com.estrongs.android.pop.view.utils.v[] vVarArr2;
        SparseArray sparseArray;
        com.estrongs.android.pop.view.utils.v[] vVarArr3;
        com.estrongs.android.pop.view.utils.v[] vVarArr4;
        com.estrongs.android.pop.view.utils.v[] vVarArr5;
        com.estrongs.android.pop.view.utils.v[] vVarArr6;
        boolean z;
        Context context;
        com.estrongs.android.pop.view.utils.v[] vVarArr7;
        Context context2;
        com.estrongs.android.pop.view.utils.v[] vVarArr8;
        Object obj;
        Handler handler;
        Handler handler2;
        com.estrongs.android.pop.view.utils.v[] vVarArr9;
        com.estrongs.android.pop.view.utils.v[] vVarArr10;
        com.estrongs.android.pop.view.utils.v[] vVarArr11;
        SparseArray sparseArray2;
        com.estrongs.android.pop.view.utils.v[] vVarArr12;
        com.estrongs.android.pop.view.utils.v[] vVarArr13;
        com.estrongs.android.pop.view.utils.v[] vVarArr14;
        com.estrongs.android.pop.view.utils.v[] vVarArr15;
        Context context3;
        Context context4;
        Context context5;
        Context context6;
        Context context7;
        com.estrongs.android.pop.view.utils.v[] vVarArr16;
        com.estrongs.android.pop.view.utils.v[] vVarArr17;
        com.estrongs.android.pop.view.utils.v[] vVarArr18;
        com.estrongs.android.pop.view.utils.v[] vVarArr19;
        com.estrongs.android.pop.view.utils.v[] vVarArr20;
        Context context8;
        int intValue = ((Integer) view.getTag()).intValue();
        vVarArr = this.f2621a.d;
        if (vVarArr[intValue].q != 1) {
            vVarArr4 = this.f2621a.d;
            if (vVarArr4[intValue].q != 5) {
                vVarArr5 = this.f2621a.d;
                if (vVarArr5[intValue].q != 0) {
                    vVarArr16 = this.f2621a.d;
                    if (vVarArr16[intValue].q != 2) {
                        vVarArr17 = this.f2621a.d;
                        if (vVarArr17[intValue].q == 3) {
                            vVarArr20 = this.f2621a.d;
                            Intent a2 = com.estrongs.android.pop.app.b.a(com.estrongs.android.pop.view.utils.n.a(vVarArr20[intValue].f));
                            context8 = this.f2621a.f2586a;
                            context8.startActivity(a2);
                        } else {
                            vVarArr18 = this.f2621a.d;
                            if (vVarArr18[intValue].q == 4) {
                                com.estrongs.android.pop.view.utils.n b2 = com.estrongs.android.pop.view.utils.n.b();
                                vVarArr19 = this.f2621a.d;
                                b2.c(vVarArr19[intValue]);
                            }
                        }
                        view.invalidate();
                    }
                }
                vVarArr6 = this.f2621a.d;
                if (vVarArr6[intValue].v != 3) {
                    vVarArr9 = this.f2621a.d;
                    if (vVarArr9[intValue].e.startsWith("market://")) {
                        vVarArr14 = this.f2621a.d;
                        vVarArr14[intValue].y = true;
                        Intent intent = new Intent("android.intent.action.VIEW");
                        vVarArr15 = this.f2621a.d;
                        intent.setData(Uri.parse(vVarArr15[intValue].e));
                        try {
                            context5 = this.f2621a.f2586a;
                            if (context5 instanceof RecommAcitivity) {
                                context7 = this.f2621a.f2586a;
                                ((RecommAcitivity) context7).a(intent);
                            } else {
                                context6 = this.f2621a.f2586a;
                                context6.startActivity(intent);
                            }
                        } catch (ActivityNotFoundException e) {
                            context3 = this.f2621a.f2586a;
                            context4 = this.f2621a.f2586a;
                            z.a(context3, context4.getText(C0000R.string.market_not_found), 1).show();
                        }
                    } else {
                        vVarArr10 = this.f2621a.d;
                        vVarArr10[intValue].u = 0L;
                        vVarArr11 = this.f2621a.d;
                        vVarArr11[intValue].q = 5;
                        RecommendListView recommendListView = this.f2621a;
                        sparseArray2 = this.f2621a.j;
                        View view2 = (View) sparseArray2.get(intValue);
                        vVarArr12 = this.f2621a.d;
                        recommendListView.a(view2, vVarArr12[intValue]);
                        com.estrongs.android.pop.view.utils.n b3 = com.estrongs.android.pop.view.utils.n.b();
                        vVarArr13 = this.f2621a.d;
                        b3.c(vVarArr13[intValue]);
                    }
                } else {
                    z = this.f2621a.f2587b;
                    if (z) {
                        Message message = new Message();
                        message.arg1 = 123466;
                        vVarArr8 = this.f2621a.d;
                        message.obj = vVarArr8[intValue].f;
                        obj = this.f2621a.f;
                        synchronized (obj) {
                            handler = this.f2621a.g;
                            if (handler != null) {
                                handler2 = this.f2621a.g;
                                handler2.sendMessage(message);
                            }
                        }
                    } else {
                        context = this.f2621a.f2586a;
                        PackageManager packageManager = context.getPackageManager();
                        vVarArr7 = this.f2621a.d;
                        Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(vVarArr7[intValue].f);
                        if (launchIntentForPackage != null) {
                            context2 = this.f2621a.f2586a;
                            context2.startActivity(launchIntentForPackage);
                        }
                    }
                }
                view.invalidate();
            }
        }
        this.f2621a.b(intValue);
        vVarArr2 = this.f2621a.d;
        vVarArr2[intValue].q = 0;
        RecommendListView recommendListView2 = this.f2621a;
        sparseArray = this.f2621a.j;
        View view3 = (View) sparseArray.get(intValue);
        vVarArr3 = this.f2621a.d;
        recommendListView2.a(view3, vVarArr3[intValue]);
        view.invalidate();
    }
}
