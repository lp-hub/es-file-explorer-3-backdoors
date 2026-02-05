package com.estrongs.a;

import java.util.Comparator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class n implements Comparator<a> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f228a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(l lVar) {
        this.f228a = lVar;
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(a aVar, a aVar2) {
        long startTime = aVar2.getStartTime() - aVar.getStartTime();
        if (startTime < 0) {
            return -1;
        }
        return startTime > 0 ? 1 : 0;
    }
}
