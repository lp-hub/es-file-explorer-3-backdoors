package com.estrongs.android.pop.app.imageviewer.gallery;

import java.text.Collator;
import java.util.Comparator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements Comparator<e> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ int f1000a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f1001b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, int i) {
        this.f1001b = aVar;
        this.f1000a = i;
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(e eVar, e eVar2) {
        Collator collator;
        Collator collator2;
        if (this.f1000a == 1) {
            collator2 = this.f1001b.f999b;
            return collator2.compare(eVar.h(), eVar2.h());
        }
        collator = this.f1001b.f999b;
        return collator.compare(eVar2.h(), eVar.h());
    }
}
