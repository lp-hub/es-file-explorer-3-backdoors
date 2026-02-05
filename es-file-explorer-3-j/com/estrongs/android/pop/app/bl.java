package com.estrongs.android.pop.app;

import java.util.Comparator;

/* loaded from: classes.dex */
class bl implements Comparator<com.gmail.yuyang226.flickr.a.a.a> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ImageCommentActivity f532a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bl(ImageCommentActivity imageCommentActivity) {
        this.f532a = imageCommentActivity;
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(com.gmail.yuyang226.flickr.a.a.a aVar, com.gmail.yuyang226.flickr.a.a.a aVar2) {
        long time = aVar.b().getTime();
        long time2 = aVar2.b().getTime();
        if (time == time2) {
            return 0;
        }
        return time > time2 ? -1 : 1;
    }
}
