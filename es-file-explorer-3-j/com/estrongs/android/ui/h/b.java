package com.estrongs.android.ui.h;

import com.estrongs.android.util.aa;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements aa {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2238a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f2239b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, String str) {
        this.f2239b = aVar;
        this.f2238a = str;
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj) {
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, long j, long j2) {
    }

    @Override // com.estrongs.android.util.aa
    public void a(Object obj, Throwable th) {
        try {
            File file = new File(this.f2238a);
            if (file.exists()) {
                file.delete();
            }
        } catch (Exception e) {
        }
    }

    @Override // com.estrongs.android.util.aa
    public void b(Object obj) {
        File file = new File(this.f2238a + ".tmp");
        if (!file.exists() || file.length() <= 0) {
            file.delete();
            return;
        }
        File file2 = new File(this.f2238a);
        file2.delete();
        file.renameTo(file2);
        try {
            this.f2239b.g();
        } catch (Exception e) {
        }
    }
}
