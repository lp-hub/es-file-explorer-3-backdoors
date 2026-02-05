package com.estrongs.android.ui.b;

import java.util.List;

/* loaded from: classes.dex */
public class dm extends com.estrongs.fs.b.w {

    /* renamed from: b, reason: collision with root package name */
    public int f1742b;
    public int c;
    public long d;

    public dm(List<com.estrongs.fs.g> list, com.estrongs.fs.d dVar) {
        super(list, dVar);
    }

    public dm(List<com.estrongs.fs.g> list, com.estrongs.fs.d dVar, boolean z) {
        super(list, dVar, z);
    }

    @Override // com.estrongs.fs.b.w, com.estrongs.a.a
    public void handleMessage(int i, Object... objArr) {
        if (i != 11) {
            super.handleMessage(i, objArr);
            return;
        }
        com.estrongs.fs.g gVar = (com.estrongs.fs.g) objArr[0];
        if (gVar.getFileType().a()) {
            this.c++;
        } else {
            this.f1742b++;
            this.d += gVar.length();
        }
        onProgress(this.processData);
    }
}
