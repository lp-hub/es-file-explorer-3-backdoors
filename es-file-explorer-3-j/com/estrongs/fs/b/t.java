package com.estrongs.fs.b;

import com.estrongs.android.pop.netfs.INetFileSystem;
import com.estrongs.android.util.TypedMap;
import java.io.FileNotFoundException;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class t extends com.estrongs.a.a {

    /* renamed from: a, reason: collision with root package name */
    protected com.estrongs.fs.d f3023a;

    /* renamed from: b, reason: collision with root package name */
    public com.estrongs.fs.g f3024b;
    public com.estrongs.android.pop.d d;
    public Throwable c = null;
    com.estrongs.fs.c.a.a e = null;
    com.estrongs.fs.h f = null;
    Boolean g = null;
    private List<com.estrongs.fs.g> j = null;
    private u k = null;
    TypedMap h = new TypedMap();
    public boolean i = false;

    public t(com.estrongs.fs.d dVar, com.estrongs.android.pop.d dVar2) {
        this.f3023a = dVar;
        this.d = dVar2;
    }

    private boolean a() {
        if (this.j == null && getTaskResult().f229a != 1) {
            throw new FileNotFoundException(com.estrongs.android.util.ak.bv(this.f3024b.getAbsolutePath()));
        }
        if (getTaskResult().f229a != 1) {
            return true;
        }
        setTaskResult(1, null);
        return false;
    }

    public void a(u uVar) {
        this.k = uVar;
    }

    public void a(boolean z) {
        requestStop();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(Object... objArr) {
        boolean z;
        com.estrongs.fs.a.d e;
        this.c = null;
        this.f3024b = (com.estrongs.fs.g) objArr[0];
        this.e = (com.estrongs.fs.c.a.a) objArr[1];
        this.f = (com.estrongs.fs.h) objArr[2];
        this.g = (Boolean) objArr[3];
        if (objArr.length != 5 || objArr[4] == null) {
            this.h = TypedMap.EMPTY;
        } else {
            this.h = (TypedMap) objArr[4];
        }
        try {
            e = com.estrongs.fs.a.b.a().e(this.f3024b.getPath());
        } catch (Exception e2) {
            z = false;
        }
        if (!this.g.booleanValue() && e != null && e.f2955a) {
            if (com.estrongs.fs.a.b.a().d(this.f3024b.getPath())) {
                z = true;
                super.execute(z ? false : true);
                return z;
            }
        }
        z = false;
        super.execute(z ? false : true);
        return z;
    }

    @Override // com.estrongs.a.a
    public void handleMessage(int i, Object... objArr) {
        if (getTaskStatus() != 2) {
            return;
        }
        switch (i) {
            case 6:
                this.processData.c = ((Long) objArr[0]).longValue();
                this.processData.d = 0L;
                onProgress(this.processData);
                return;
            case 7:
                this.processData.d += ((Long) objArr[0]).longValue();
                onProgress(this.processData);
                return;
            default:
                super.handleMessage(i, objArr);
                return;
        }
    }

    @Override // com.estrongs.a.a
    protected boolean needSystemLock() {
        return false;
    }

    @Override // com.estrongs.a.a
    public boolean task() {
        this.j = null;
        try {
            System.currentTimeMillis();
            int l = this.f3023a.l(this.f3024b.getAbsolutePath());
            if (l > 0) {
                this.h.put(INetFileSystem.LIST_OFFSET, 0);
                this.h.put(INetFileSystem.LIST_LIMIT, Integer.valueOf(l));
            }
            if (com.estrongs.android.util.ak.aL(this.f3024b.getPath())) {
                this.h.put("partialListener", this.k);
            }
            this.j = this.f3023a.a(this.f3024b, this.g.booleanValue(), this.f, this.h);
            if (this.k == null || l < 0 || this.h.getInt("cacheStatus") == 1) {
                if (this.j != null && this.e != null) {
                    Collections.sort(this.j, this.e);
                }
                if (!a()) {
                    return false;
                }
                if (!com.estrongs.android.util.ak.b(this.f3024b.getPath(), this.h) || this.h.getBoolean("get_data_from_cache")) {
                    setTaskResult(0, this.j);
                } else {
                    setTaskResult(0, "ALL_LOADED");
                }
            } else {
                int i = 0;
                do {
                    if (!this.g.booleanValue() && this.h.getInt("cacheStatus") == 2) {
                        this.j = this.f3023a.a(this.f3024b, true, this.f, this.h);
                    }
                    if (!a()) {
                        return false;
                    }
                    if (this.j != null && this.e != null) {
                        Collections.sort(this.j, this.e);
                    }
                    this.k.a(this, this.j);
                    if (!this.h.getBoolean(INetFileSystem.LIST_FINISHED)) {
                        i += this.j.size();
                        this.h.put(INetFileSystem.LIST_OFFSET, Integer.valueOf(i));
                        this.j = this.f3023a.a(this.f3024b, true, this.f, this.h);
                        if (this.j == null) {
                            break;
                        }
                    } else {
                        break;
                    }
                } while (this.j.size() > 0);
                this.h.remove(INetFileSystem.LIST_FINISHED);
                setTaskResult(0, "ALL_LOADED");
            }
        } catch (Throwable th) {
            if (th.getCause() != null) {
                this.c = th.getCause();
            } else {
                this.c = th;
            }
        }
        return true;
    }
}
