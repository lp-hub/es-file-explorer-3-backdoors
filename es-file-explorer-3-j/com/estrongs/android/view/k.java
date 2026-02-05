package com.estrongs.android.view;

import java.io.File;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k implements com.estrongs.android.pop.app.compress.j {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f2840a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ List f2841b;
    final /* synthetic */ boolean c;
    final /* synthetic */ e d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(e eVar, String str, List list, boolean z) {
        this.d = eVar;
        this.f2840a = str;
        this.f2841b = list;
        this.c = z;
    }

    @Override // com.estrongs.android.pop.app.compress.j
    public void a(com.estrongs.android.pop.app.compress.a aVar, com.estrongs.android.pop.app.compress.k kVar) {
        int i;
        int i2;
        if (kVar != null) {
            File file = new File(this.f2840a);
            this.d.ah = kVar.c;
            this.d.ai = kVar.f613a;
            i = this.d.ai;
            if (3 == i) {
                this.d.aj = kVar.f614b;
            } else {
                i2 = this.d.ai;
                if (1 == i2) {
                    this.d.aj = file.getParent();
                } else {
                    this.d.aj = file.getParent() + "/" + com.estrongs.fs.c.d.a(this.f2840a);
                }
            }
            this.d.b((List<com.estrongs.fs.g>) this.f2841b, this.c);
        }
    }
}
