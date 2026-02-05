package com.estrongs.android.view;

import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class as implements com.estrongs.fs.a.e {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ar f2750a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(ar arVar) {
        this.f2750a = arVar;
    }

    @Override // com.estrongs.fs.a.e
    public void a(String str, int i, List<String> list) {
        String str2;
        String str3;
        if (this.f2750a.x == null) {
            return;
        }
        String path = this.f2750a.x.getPath();
        int e = this.f2750a.e(path);
        if (!this.f2750a.H()) {
            if ((e == 4 && (i & e) == 4) || ((e == 2 && (i & e) == 2) || ((e == 8 && (i & e) == 8) || ((e == 16 && (i & e) == 16) || (e == 32 && (e & i) == 32))))) {
                this.f2750a.K = true;
            } else if (path != null && com.estrongs.fs.a.a.d(com.estrongs.fs.a.a.f(path)).equals(str)) {
                this.f2750a.K = true;
            }
            if (this.f2750a.K && list != null && list.size() > 0) {
                this.f2750a.ak = list.get(0);
            }
        } else if (com.estrongs.fs.a.a.d(com.estrongs.fs.a.a.f(path)).equals(str) || (("ftp://".equals(path) && ("sftp://".equals(str) || "ftps://".equals(str) || "ftpes://".equals(str) || "webdav://".equals(str) || "webdavs://".equals(str))) || ((e == 4 && (i & e) == 4) || ((e == 2 && (i & e) == 2) || ((e == 8 && (i & e) == 8) || ((e == 16 && (i & e) == 16) || (e == 32 && (i & e) == 32))))))) {
            if (list != null && list.size() > 0) {
                this.f2750a.ak = list.get(0);
            }
            this.f2750a.ad.runOnUiThread(new aw(this));
        }
        str2 = this.f2750a.ak;
        if (str2 != null) {
            ar arVar = this.f2750a;
            str3 = this.f2750a.ak;
            arVar.ak = com.estrongs.fs.a.a.d(str3);
        }
    }

    @Override // com.estrongs.fs.a.e
    public void a(String str, String str2, int i) {
        if (this.f2750a.x == null) {
            return;
        }
        String path = this.f2750a.x.getPath();
        int e = this.f2750a.e(path);
        if (this.f2750a.H()) {
            if (com.estrongs.fs.a.a.a(str).equals(com.estrongs.fs.a.a.d(com.estrongs.fs.a.a.f(path))) || ((e == 4 && (i & e) == 4) || ((e == 2 && (i & e) == 2) || ((e == 8 && (i & e) == 8) || ((e == 16 && (i & e) == 16) || (e == 32 && (i & e) == 32)))))) {
                this.f2750a.ad.runOnUiThread(new av(this));
                return;
            }
            return;
        }
        if ((e == 4 && (i & e) == 4) || ((e == 2 && (i & e) == 2) || ((e == 8 && (i & e) == 8) || ((e == 16 && (i & e) == 16) || (e == 32 && (e & i) == 32))))) {
            this.f2750a.K = true;
            return;
        }
        if (path != null) {
            if (com.estrongs.fs.a.a.f(path).equals(str2)) {
                this.f2750a.K = true;
                return;
            }
            if (com.estrongs.fs.a.a.a(str, com.estrongs.fs.a.a.f(path))) {
                this.f2750a.x = com.estrongs.fs.d.a(this.f2750a.ad).j(com.estrongs.fs.a.a.e(path) ? com.estrongs.fs.a.a.g(str2 + com.estrongs.fs.a.a.f(path).substring(str.length(), com.estrongs.fs.a.a.f(path).length())) : str2 + com.estrongs.fs.a.a.f(path).substring(str.length(), com.estrongs.fs.a.a.f(path).length()));
                this.f2750a.K = true;
            } else if (com.estrongs.fs.a.a.a(str).equals(com.estrongs.fs.a.a.d(com.estrongs.fs.a.a.f(path)))) {
                this.f2750a.K = true;
            }
        }
    }

    @Override // com.estrongs.fs.a.e
    public void a(List<String> list, int i, String str) {
        String a2;
        if (this.f2750a.x == null) {
            return;
        }
        String path = this.f2750a.x.getPath();
        int e = this.f2750a.e(path);
        if (this.f2750a.H()) {
            if (com.estrongs.fs.a.b.a().b(list).contains(com.estrongs.fs.a.a.d(com.estrongs.fs.a.a.f(path))) || ((e == 4 && (i & e) == 4) || ((e == 2 && (i & e) == 2) || ((e == 8 && (i & e) == 8) || ((e == 16 && (i & e) == 16) || ((e == 32 && (e & i) == 32) || com.estrongs.fs.a.b.a().b(list).contains("sftp://") || com.estrongs.fs.a.b.a().b(list).contains("ftps://") || com.estrongs.fs.a.b.a().b(list).contains("ftpes://") || com.estrongs.fs.a.b.a().b(list).contains("webdav://") || com.estrongs.fs.a.b.a().b(list).contains("webdavs://") || (str != null && str.equals(path)))))))) {
                this.f2750a.ad.runOnUiThread(new at(this));
                return;
            } else {
                if (path == null || (a2 = com.estrongs.fs.a.a.a(list, com.estrongs.fs.a.a.f(path))) == null) {
                    return;
                }
                if (!com.estrongs.android.util.ak.ap(a2)) {
                    this.f2750a.x = com.estrongs.fs.d.a(this.f2750a.ad).j(com.estrongs.fs.a.a.e(path) ? com.estrongs.fs.a.a.g(com.estrongs.fs.a.a.a(a2)) : com.estrongs.fs.a.a.a(a2));
                }
                this.f2750a.ad.runOnUiThread(new au(this));
                return;
            }
        }
        if (str != null && str.equals(path)) {
            this.f2750a.K = true;
            return;
        }
        if ((e == 4 && (i & e) == 4) || ((e == 2 && (i & e) == 2) || ((e == 8 && (i & e) == 8) || ((e == 16 && (i & e) == 16) || (e == 32 && (e & i) == 32))))) {
            this.f2750a.K = true;
            return;
        }
        if (path != null) {
            String a3 = com.estrongs.fs.a.a.a(list, com.estrongs.fs.a.a.f(path));
            if (a3 != null) {
                if (!com.estrongs.android.util.ak.ap(a3)) {
                    this.f2750a.x = com.estrongs.fs.d.a(this.f2750a.ad).j(com.estrongs.fs.a.a.e(path) ? com.estrongs.fs.a.a.g(com.estrongs.fs.a.a.a(a3)) : com.estrongs.fs.a.a.a(a3));
                }
                this.f2750a.K = true;
            } else if (com.estrongs.fs.a.b.a().b(list).contains(com.estrongs.fs.a.a.d(com.estrongs.fs.a.a.f(path)))) {
                this.f2750a.K = true;
            }
        }
    }
}
