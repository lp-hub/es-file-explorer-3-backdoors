package com.estrongs.a.b;

import com.estrongs.fs.FileSystemException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class n {

    /* renamed from: a, reason: collision with root package name */
    o f211a;

    /* renamed from: b, reason: collision with root package name */
    o f212b;
    private com.estrongs.fs.d c = com.estrongs.fs.d.a();

    public n(com.estrongs.fs.g gVar) {
        this.f211a = null;
        this.f212b = null;
        ArrayList arrayList = new ArrayList();
        arrayList.add(gVar);
        this.f211a = new o(arrayList);
        if (this.f211a.f213a.get(0).getFileType() == com.estrongs.fs.l.f3183a) {
            this.f212b = a(this.f211a);
        } else {
            this.f212b = this.f211a;
        }
    }

    private o a(o oVar) {
        try {
            List<com.estrongs.fs.g> a2 = this.c.a(oVar.f213a.get(oVar.c).getAbsolutePath());
            if (a2 == null || a2.size() <= 0) {
                return oVar;
            }
            o oVar2 = new o(a2);
            oVar.d = oVar2;
            oVar2.e = oVar;
            return oVar2;
        } catch (FileSystemException e) {
            e.printStackTrace();
            return oVar;
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:11:0x0024 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public com.estrongs.fs.g a() {
        o oVar;
        o oVar2;
        if (this.f211a == null) {
            return null;
        }
        if (!this.f211a.f214b) {
            this.f211a.f214b = true;
            return this.f211a.f213a.get(0);
        }
        while (oVar != null) {
            int i = this.f212b.c;
            if (i >= this.f212b.f213a.size()) {
                oVar2 = this.f212b.e;
                this.f212b = oVar2;
                this.f212b.d = null;
            } else {
                if (!this.f212b.f214b && this.f212b.f213a.get(i).getFileType() == com.estrongs.fs.l.f3183a) {
                    com.estrongs.fs.g gVar = this.f212b.f213a.get(i);
                    this.f212b.f214b = true;
                    this.f212b = a(this.f212b);
                    return gVar;
                }
                boolean z = this.f212b.f214b;
                com.estrongs.fs.g gVar2 = this.f212b.f213a.get(i);
                this.f212b.c++;
                this.f212b.f214b = false;
                if (!z) {
                    return gVar2;
                }
            }
        }
        this.f211a = null;
        return null;
    }
}
