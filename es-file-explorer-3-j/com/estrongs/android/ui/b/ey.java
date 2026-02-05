package com.estrongs.android.ui.b;

import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.ShowDialogActivity;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ey implements com.estrongs.a.a.k {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ew f1804a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ey(ew ewVar) {
        this.f1804a = ewVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00e1, code lost:
    
        if (((com.estrongs.fs.b.i) r0).d() != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01ad, code lost:
    
        if ((r1 instanceof com.estrongs.fs.b.i) != false) goto L67;
     */
    @Override // com.estrongs.a.a.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        Handler handler;
        boolean z;
        com.estrongs.a.a aVar2;
        com.estrongs.a.a aVar3;
        Handler handler2;
        com.estrongs.a.a aVar4;
        com.estrongs.a.a aVar5;
        com.estrongs.android.ui.notification.e eVar;
        com.estrongs.a.a aVar6;
        com.estrongs.a.a aVar7;
        com.estrongs.a.a aVar8;
        com.estrongs.a.a aVar9;
        com.estrongs.a.a aVar10;
        com.estrongs.a.a aVar11;
        com.estrongs.android.ui.notification.e eVar2;
        com.estrongs.a.a aVar12;
        com.estrongs.android.ui.notification.e eVar3;
        com.estrongs.android.ui.notification.e eVar4;
        if (i2 != 4) {
            if (i2 == 5) {
                handler = this.f1804a.s;
                handler.post(new ez(this, aVar));
                if (!(aVar instanceof com.estrongs.fs.b.i) && !(aVar instanceof com.estrongs.fs.b.o) && !(aVar instanceof com.estrongs.fs.b.at) && !(aVar instanceof com.estrongs.fs.b.g) && !(aVar instanceof com.estrongs.fs.b.q)) {
                    this.f1804a.f1802b = false;
                }
                com.estrongs.a.p taskResult = aVar.getTaskResult();
                String a2 = this.f1804a.a(taskResult);
                if (taskResult.f229a != 1) {
                    this.f1804a.c(aVar);
                    if (a2 == null) {
                        a2 = this.f1804a.getString(C0000R.string.task_failed_message);
                    }
                }
                if (!com.estrongs.android.util.aw.a((CharSequence) a2)) {
                    z = this.f1804a.f1802b;
                    if (z) {
                        aVar2 = this.f1804a.r;
                        if (aVar2.processData != null) {
                            aVar3 = this.f1804a.r;
                            if (aVar3.processData.d <= 0) {
                                aVar4 = this.f1804a.r;
                                if (aVar4.processData.f <= 0) {
                                    aVar5 = this.f1804a.r;
                                }
                            }
                            handler2 = this.f1804a.s;
                            handler2.post(new fa(this, aVar, a2));
                            return;
                        }
                    }
                    this.f1804a.b(a2);
                }
                this.f1804a.h();
                return;
            }
            return;
        }
        this.f1804a.f1802b = false;
        if (!(aVar instanceof com.estrongs.fs.b.q) && aVar.getTaskResult().f229a != 3) {
            String a3 = this.f1804a.a();
            if (!com.estrongs.android.util.aw.a((CharSequence) a3)) {
                this.f1804a.b(a3);
            }
        }
        this.f1804a.h();
        this.f1804a.b(aVar);
        if (aVar instanceof com.estrongs.fs.b.q) {
            eVar3 = this.f1804a.t;
            if (eVar3 != null) {
                eVar4 = this.f1804a.t;
                eVar4.a();
            }
            String b2 = ((com.estrongs.fs.b.q) aVar).b();
            Intent intent = new Intent(this.f1804a.mContext, (Class<?>) ShowDialogActivity.class);
            String str = this.f1804a.mContext.getString(C0000R.string.download_sucessfully_message, "") + "!\n" + this.f1804a.mContext.getString(C0000R.string.task_destination) + com.estrongs.android.util.ak.bv(b2);
            intent.setData(Uri.parse(b2));
            intent.putExtra("title", this.f1804a.mContext.getString(C0000R.string.action_download));
            intent.putExtra("message", str);
            intent.putExtra("openfileOrFolder", true);
            intent.putExtra("pathIsDir", false);
            this.f1804a.mContext.startActivity(intent);
            return;
        }
        eVar = this.f1804a.t;
        if (eVar != null) {
            aVar6 = this.f1804a.r;
            if (aVar6 instanceof com.estrongs.fs.b.i) {
                aVar12 = this.f1804a.r;
            }
            aVar7 = this.f1804a.r;
            if (!(aVar7 instanceof com.estrongs.fs.b.o)) {
                aVar8 = this.f1804a.r;
                if (!(aVar8 instanceof com.estrongs.fs.b.at)) {
                    aVar9 = this.f1804a.r;
                    if (!(aVar9 instanceof com.estrongs.fs.b.ah)) {
                        aVar10 = this.f1804a.r;
                        if (!(aVar10 instanceof com.estrongs.fs.b.a)) {
                            aVar11 = this.f1804a.r;
                            if (!(aVar11 instanceof com.estrongs.fs.b.g)) {
                                return;
                            }
                        }
                    }
                }
            }
            if (FexApplication.a().b()) {
                eVar2 = this.f1804a.t;
                eVar2.a();
            }
        }
    }
}
