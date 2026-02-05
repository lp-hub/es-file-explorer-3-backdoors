package com.estrongs.android.pop.app;

import android.app.Activity;
import com.estrongs.android.pop.C0000R;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class x extends com.estrongs.android.ui.b.ew {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1088a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f1089b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(Activity activity, String str, com.estrongs.a.a aVar, String str2, String str3) {
        super(activity, str, aVar);
        this.f1088a = str2;
        this.f1089b = str3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.b.ew
    public String a() {
        return getContext().getString(C0000R.string.download_sucessfully_message, com.estrongs.android.util.ak.B(this.f1089b));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.b.ew
    public String a(com.estrongs.a.p pVar) {
        if (pVar == null || pVar.f230b == null) {
            return null;
        }
        return this.f1088a;
    }

    @Override // com.estrongs.android.ui.b.ew
    protected String b() {
        return getContext().getString(C0000R.string.download_cancel_message, com.estrongs.android.util.ak.B(this.f1089b));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.b.ew
    public void c(com.estrongs.a.a aVar) {
        try {
            new File(((com.estrongs.fs.b.q) aVar).c()).delete();
        } catch (Exception e) {
        }
    }
}
