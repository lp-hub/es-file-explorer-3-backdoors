package com.baidu.mobstat;

/* loaded from: classes.dex */
class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ long f141a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f142b;
    final /* synthetic */ String c;
    final /* synthetic */ d d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(d dVar, long j, String str, String str2) {
        this.d = dVar;
        this.f141a = j;
        this.f142b = str;
        this.c = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!k.a().c()) {
            synchronized (k.a()) {
                try {
                    k.a().wait();
                } catch (InterruptedException e) {
                    com.baidu.mobstat.a.c.a("stat", e);
                }
            }
        }
        i iVar = new i(this.d);
        iVar.c = this.f141a;
        iVar.f147a = this.f142b;
        iVar.f148b = this.c;
        String a2 = this.d.a(this.f142b, this.c);
        if (this.d.f137a.get(a2) != null) {
            com.baidu.mobstat.a.c.b("stat", "EventStat: event_id[" + this.f142b + "] with label[" + this.c + "] is duplicated, older is removed");
        }
        this.d.f137a.put(a2, iVar);
        com.baidu.mobstat.a.c.a("stat", "put a keyword[" + a2 + "] into durationlist");
    }
}
