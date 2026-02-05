package com.estrongs.android.pop.a;

import android.app.Activity;
import com.estrongs.a.p;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.fr;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d extends fr {

    /* renamed from: a, reason: collision with root package name */
    File f335a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f336b;
    final /* synthetic */ String c;
    final /* synthetic */ Runnable d;
    final /* synthetic */ Activity e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Activity activity, String str, String str2, com.estrongs.a.a aVar, String str3, String str4, Runnable runnable, Activity activity2) {
        super(activity, str, str2, aVar);
        this.f336b = str3;
        this.c = str4;
        this.d = runnable;
        this.e = activity2;
        this.f335a = new File(this.f336b);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.b.fr
    public String a() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.b.fr
    public String a(p pVar) {
        if (pVar == null || pVar.f230b == null) {
            return null;
        }
        return this.e.getString(C0000R.string.download_plugin_failure_message, new Object[]{this.c.toUpperCase()});
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.b.fr
    public void a(com.estrongs.a.a aVar) {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder();
        str = a.f329a;
        String sb2 = sb.append(str).append("/es_").append(this.c).append(".jar").toString();
        if ("ftps".equalsIgnoreCase(this.c)) {
            StringBuilder sb3 = new StringBuilder();
            str2 = a.f329a;
            sb2 = sb3.append(str2).append("/es_").append("ftp").append(".jar").toString();
        }
        if (new File(sb2).exists()) {
            new File(sb2).delete();
        }
        this.f335a.renameTo(new File(sb2));
        if (this.d != null) {
            this.e.runOnUiThread(this.d);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.b.fr
    public void b(com.estrongs.a.a aVar) {
        this.f335a.delete();
    }
}
