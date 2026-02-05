package com.estrongs.android.pop.app;

import java.util.Map;

/* loaded from: classes.dex */
class ig implements com.estrongs.android.a.d {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a.b f901a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.a.a f902b;
    final /* synthetic */ ShowDialogActivity c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ig(ShowDialogActivity showDialogActivity, com.estrongs.a.a.b bVar, com.estrongs.a.a aVar) {
        this.c = showDialogActivity;
        this.f901a = bVar;
        this.f902b = aVar;
    }

    @Override // com.estrongs.android.a.d
    public void a(String str, String str2, Object obj) {
        long j;
        Map<Long, com.estrongs.android.a.a> map = com.estrongs.android.a.a.f233a;
        j = this.c.f379a;
        map.remove(Long.valueOf(j));
        this.f901a.f190b = str;
        com.estrongs.a.a.b bVar = this.f901a;
        if (str2 == null) {
            str2 = "";
        }
        bVar.c = str2;
        this.f902b.sendMessage(5, this.f901a);
    }
}
