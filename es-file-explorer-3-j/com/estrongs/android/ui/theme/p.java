package com.estrongs.android.ui.theme;

import android.util.Log;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p implements com.estrongs.android.util.aa {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2553a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ ThemeActivity f2554b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(ThemeActivity themeActivity, String str) {
        this.f2554b = themeActivity;
        this.f2553a = str;
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj) {
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, long j, long j2) {
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, Throwable th) {
        Log.e("Alert", "request theme info failed !");
    }

    @Override // com.estrongs.android.util.aa
    public void b(Object obj) {
        File file = new File(this.f2553a + ".tmp");
        if (!file.exists() || file.length() <= 0) {
            file.delete();
            return;
        }
        File file2 = new File(this.f2553a);
        file2.delete();
        file.renameTo(file2);
        this.f2554b.e();
    }
}
