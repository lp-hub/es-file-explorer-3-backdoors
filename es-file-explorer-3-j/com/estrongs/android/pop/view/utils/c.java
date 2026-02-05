package com.estrongs.android.pop.view.utils;

import android.app.Activity;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.ak;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.d f1439a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1440b;
    final /* synthetic */ Activity c;
    final /* synthetic */ String d;
    final /* synthetic */ boolean e;
    final /* synthetic */ File f;
    final /* synthetic */ Runnable g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(String str, com.estrongs.fs.d dVar, String str2, Activity activity, String str3, boolean z, File file, Runnable runnable) {
        super(str);
        this.f1439a = dVar;
        this.f1440b = str2;
        this.c = activity;
        this.d = str3;
        this.e = z;
        this.f = file;
        this.g = runnable;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        com.estrongs.fs.g j = this.f1439a.j(this.f1440b);
        if (j == null) {
            com.estrongs.android.pop.utils.a.a(this.c, (CharSequence) this.c.getString(C0000R.string.object_not_found_msg, new Object[]{ak.C(this.f1440b)}));
        } else {
            com.estrongs.android.pop.utils.a.a(this.c, new d(this, com.estrongs.android.pop.q.a(FexApplication.a()).o(), j));
        }
    }
}
