package com.gmail.yuyang226.flickr.oauth;

import java.util.Comparator;

/* loaded from: classes.dex */
class b implements Comparator<com.gmail.yuyang226.flickr.a> {
    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(com.gmail.yuyang226.flickr.a aVar, com.gmail.yuyang226.flickr.a aVar2) {
        if ((aVar instanceof com.gmail.yuyang226.flickr.c.a) && !(aVar2 instanceof com.gmail.yuyang226.flickr.c.a)) {
            return 1;
        }
        if ((aVar2 instanceof com.gmail.yuyang226.flickr.c.a) && !(aVar instanceof com.gmail.yuyang226.flickr.c.a)) {
            return -1;
        }
        int compareTo = aVar.a().compareTo(aVar2.a());
        return compareTo == 0 ? aVar.b().toString().compareTo(aVar2.b().toString()) : compareTo;
    }
}
