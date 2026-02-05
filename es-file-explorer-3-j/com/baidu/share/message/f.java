package com.baidu.share.message;

import java.util.ArrayList;

/* loaded from: classes.dex */
class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ShareReceiver f185a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ d f186b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(ShareReceiver shareReceiver, d dVar) {
        this.f185a = shareReceiver;
        this.f186b = dVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList;
        ArrayList arrayList2;
        int i = 0;
        while (true) {
            int i2 = i;
            arrayList = ShareReceiver.f177b;
            if (i2 >= arrayList.size()) {
                return;
            }
            arrayList2 = ShareReceiver.f177b;
            ((c) arrayList2.get(i2)).a(this.f186b);
            i = i2 + 1;
        }
    }
}
