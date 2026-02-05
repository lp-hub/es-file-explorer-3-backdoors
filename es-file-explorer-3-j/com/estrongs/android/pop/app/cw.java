package com.estrongs.android.pop.app;

import java.text.Collator;
import java.util.Comparator;

/* loaded from: classes.dex */
public class cw implements Comparator<com.estrongs.android.pop.view.utils.t> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ OpenRecomm f642a;

    /* renamed from: b, reason: collision with root package name */
    private final Collator f643b = Collator.getInstance();

    public cw(OpenRecomm openRecomm) {
        this.f642a = openRecomm;
        this.f643b.setStrength(0);
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(com.estrongs.android.pop.view.utils.t tVar, com.estrongs.android.pop.view.utils.t tVar2) {
        return this.f643b.compare(tVar.f1472b, tVar2.f1472b);
    }
}
