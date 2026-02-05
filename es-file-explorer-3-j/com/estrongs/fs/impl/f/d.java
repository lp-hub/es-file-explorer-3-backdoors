package com.estrongs.fs.impl.f;

import com.estrongs.fs.l;
import com.estrongs.fs.m;

/* loaded from: classes.dex */
class d extends m {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int[] f3076a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f3077b;
    final /* synthetic */ c c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(c cVar, String str, String str2, l lVar, String str3, int[] iArr, String str4) {
        super(str, str2, lVar, str3);
        this.c = cVar;
        this.f3076a = iArr;
        this.f3077b = str4;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public Object getExtra(String str) {
        if (super.getExtra(str) == null && this.f3076a[0] > 0) {
            super.putExtra("item_count", Integer.valueOf(this.f3076a[0]));
        }
        return super.getExtra(str);
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long lastModified() {
        return com.estrongs.fs.impl.local.d.b(this.f3077b).lastModified();
    }
}
