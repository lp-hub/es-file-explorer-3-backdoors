package com.estrongs.android.pop.app.diskusage;

import android.app.Activity;
import android.os.Handler;
import com.estrongs.android.pop.app.PopPreferenceActivity;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.view.ae;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ List f671a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ e f672b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(e eVar, String str, List list) {
        super(str);
        this.f672b = eVar;
        this.f671a = list;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        File file;
        File file2;
        Activity activity;
        Object obj;
        Activity activity2;
        b bVar;
        b bVar2;
        b bVar3;
        b bVar4;
        long j;
        b bVar5;
        long j2;
        b bVar6;
        b bVar7;
        Activity activity3;
        boolean z;
        Handler handler;
        File file3;
        HashMap hashMap;
        file = this.f672b.an;
        ae aeVar = new ae(file.getAbsolutePath(), hashCode());
        file2 = this.f672b.an;
        File[] listFiles = file2.listFiles(new i(this, aeVar));
        if (listFiles == null) {
            activity = this.f672b.ad;
            ((ESActivity) activity).a(new j(this));
            return;
        }
        obj = this.f672b.ai;
        synchronized (obj) {
            e eVar = this.f672b;
            activity2 = this.f672b.ad;
            eVar.ap = new b(activity2);
        }
        bVar = this.f672b.ap;
        Map<String, com.estrongs.fs.c.a> map = bVar.i;
        bVar2 = this.f672b.ao;
        map.putAll(bVar2.i);
        bVar3 = this.f672b.ap;
        bVar3.a(this.f672b.f667a);
        bVar4 = this.f672b.ap;
        j = this.f672b.as;
        bVar4.a(j);
        bVar5 = this.f672b.ap;
        j2 = this.f672b.aF;
        bVar5.b(j2);
        bVar6 = this.f672b.ap;
        if (bVar6.a(listFiles)) {
            bVar7 = this.f672b.ap;
            activity3 = this.f672b.ad;
            bVar7.a(PopPreferenceActivity.a(activity3));
            z = this.f672b.aB;
            if (z) {
                this.f672b.n();
            }
        } else {
            String str = this.f672b.f668b;
            file3 = this.f672b.an;
            if (str.equals(file3.getAbsolutePath())) {
                hashMap = this.f672b.aq;
                hashMap.remove(this.f672b.f668b);
            }
        }
        handler = this.f672b.aH;
        handler.sendEmptyMessage(2);
    }
}
