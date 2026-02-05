package com.estrongs.android.widget;

import android.app.Activity;
import com.estrongs.android.pop.C0000R;
import com.estrongs.fs.FileExistException;
import com.estrongs.fs.FileSystemException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2923a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ g f2924b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(g gVar, String str) {
        this.f2924b = gVar;
        this.f2923a = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Activity activity;
        Activity activity2;
        String sb;
        Activity activity3;
        Activity activity4;
        com.estrongs.android.view.ar arVar;
        com.estrongs.android.view.ar arVar2;
        String str;
        Activity activity5;
        Activity activity6;
        try {
            try {
                this.f2924b.f2919b = this.f2923a;
                arVar = this.f2924b.j;
                String c = arVar.c();
                String str2 = this.f2924b.f2919b;
                arVar2 = this.f2924b.j;
                if (com.estrongs.fs.c.d.a(c, str2, true, arVar2.Q())) {
                    str = null;
                } else {
                    activity6 = this.f2924b.r;
                    str = activity6.getString(C0000R.string.operation_failed);
                }
                if (str != null) {
                    activity5 = this.f2924b.r;
                    activity5.runOnUiThread(new k(this, str));
                }
            } catch (FileSystemException e) {
                if (e instanceof FileExistException) {
                    StringBuilder sb2 = new StringBuilder();
                    activity4 = this.f2924b.r;
                    sb = sb2.append(activity4.getString(C0000R.string.operation_failed)).append(":").append(e.getMessage()).toString();
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    activity2 = this.f2924b.r;
                    sb = sb3.append(activity2.getString(C0000R.string.operation_failed)).append(":").append(e.getMessage()).toString();
                }
                if (sb != null) {
                    activity3 = this.f2924b.r;
                    activity3.runOnUiThread(new k(this, sb));
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                activity = this.f2924b.r;
                activity.runOnUiThread(new k(this, null));
            }
            throw th;
        }
    }
}
