package com.estrongs.android.ui.b;

import android.os.Handler;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class fa implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f1809a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1810b;
    final /* synthetic */ ey c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fa(ey eyVar, com.estrongs.a.a aVar, String str) {
        this.c = eyVar;
        this.f1809a = aVar;
        this.f1810b = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x016a  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        boolean z;
        com.estrongs.android.view.af afVar;
        com.estrongs.a.a aVar;
        com.estrongs.a.a aVar2;
        com.estrongs.a.a aVar3;
        com.estrongs.a.a aVar4;
        com.estrongs.android.view.af afVar2;
        com.estrongs.android.view.af afVar3;
        com.estrongs.android.view.af afVar4;
        com.estrongs.a.a aVar5;
        com.estrongs.android.view.af afVar5;
        long j;
        com.estrongs.a.a aVar6;
        Handler handler;
        com.estrongs.android.view.af afVar6;
        com.estrongs.a.a aVar7;
        com.estrongs.a.a aVar8;
        z = this.c.f1804a.f1802b;
        if (z) {
            j = this.c.f1804a.g;
            if (j == 0) {
                this.c.f1804a.d();
                aVar6 = this.c.f1804a.r;
                if (aVar6.processData != null) {
                    afVar6 = this.c.f1804a.q;
                    com.estrongs.a.a.h hVar = afVar6.c;
                    aVar7 = this.c.f1804a.r;
                    aVar8 = this.c.f1804a.r;
                    hVar.a(aVar7, aVar8.processData);
                }
                handler = this.c.f1804a.s;
                handler.post(new fb(this));
                aVar = this.c.f1804a.r;
                if (aVar instanceof com.estrongs.fs.b.i) {
                    aVar2 = this.c.f1804a.r;
                    if (aVar2 instanceof com.estrongs.fs.b.y) {
                        this.c.f1804a.setTitle(this.c.f1804a.mContext.getString(C0000R.string.action_move) + " " + this.c.f1804a.mContext.getString(C0000R.string.task_failed_message));
                        this.c.f1804a.a(this.c.f1804a.mContext.getString(C0000R.string.action_move) + " " + this.c.f1804a.mContext.getString(C0000R.string.task_failed_message) + "," + this.c.f1804a.mContext.getString(C0000R.string.message_retry));
                    } else if (this.f1809a instanceof com.estrongs.fs.b.o) {
                        this.c.f1804a.setTitle(this.c.f1804a.mContext.getString(C0000R.string.action_delete) + " " + this.c.f1804a.mContext.getString(C0000R.string.task_failed_message));
                    } else if (this.f1809a instanceof com.estrongs.fs.b.at) {
                        this.c.f1804a.setTitle(this.c.f1804a.mContext.getString(C0000R.string.notification_es_ftp_svr_transfer) + " " + this.c.f1804a.mContext.getString(C0000R.string.task_failed_message));
                    } else if (this.f1809a instanceof com.estrongs.fs.b.g) {
                        this.c.f1804a.setTitle(this.c.f1804a.mContext.getString(C0000R.string.batch_rename) + " " + this.c.f1804a.mContext.getString(C0000R.string.task_failed_message));
                    } else if (this.f1809a instanceof com.estrongs.fs.b.q) {
                        this.c.f1804a.setTitle(this.c.f1804a.mContext.getString(C0000R.string.recommend_button_download_fail));
                    }
                } else {
                    this.c.f1804a.setTitle(this.c.f1804a.mContext.getString(C0000R.string.action_copy) + " " + this.c.f1804a.mContext.getString(C0000R.string.task_failed_message));
                    this.c.f1804a.a(this.c.f1804a.mContext.getString(C0000R.string.action_copy) + " " + this.c.f1804a.mContext.getString(C0000R.string.task_failed_message) + "," + this.c.f1804a.mContext.getString(C0000R.string.message_retry));
                }
                if (this.f1810b != null) {
                    this.c.f1804a.a(this.f1810b);
                }
                aVar3 = this.c.f1804a.r;
                if (aVar3.processData.d == 0) {
                    aVar5 = this.c.f1804a.r;
                    if (aVar5.processData.f == 0) {
                        afVar5 = this.c.f1804a.q;
                        afVar5.c();
                    }
                }
                aVar4 = this.c.f1804a.r;
                if (!(aVar4 instanceof com.estrongs.fs.b.i)) {
                    this.c.f1804a.setConfirmButton(this.c.f1804a.mContext.getString(C0000R.string.message_retry), new fc(this));
                    this.c.f1804a.setCancelButton(this.c.f1804a.mContext.getString(C0000R.string.confirm_cancel), new fd(this));
                    return;
                }
                afVar2 = this.c.f1804a.q;
                afVar2.d(8);
                afVar3 = this.c.f1804a.q;
                afVar3.e(8);
                afVar4 = this.c.f1804a.q;
                afVar4.c(8);
                this.c.f1804a.setSingleButton(this.c.f1804a.mContext.getString(C0000R.string.confirm_ok), new fe(this));
                return;
            }
        }
        afVar = this.c.f1804a.q;
        afVar.b();
        aVar = this.c.f1804a.r;
        if (aVar instanceof com.estrongs.fs.b.i) {
        }
        if (this.f1810b != null) {
        }
        aVar3 = this.c.f1804a.r;
        if (aVar3.processData.d == 0) {
        }
        aVar4 = this.c.f1804a.r;
        if (!(aVar4 instanceof com.estrongs.fs.b.i)) {
        }
    }
}
