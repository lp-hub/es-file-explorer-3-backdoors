package com.estrongs.fs.b;

import java.util.Comparator;

/* loaded from: classes.dex */
class n implements Comparator<String> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ m f3013a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(m mVar) {
        this.f3013a = mVar;
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(String str, String str2) {
        try {
            return this.f3013a.f3012b.compare(com.estrongs.android.util.ak.d(str).toLowerCase(), com.estrongs.android.util.ak.d(str2).toLowerCase());
        } catch (Throwable th) {
            return 0;
        }
    }
}
