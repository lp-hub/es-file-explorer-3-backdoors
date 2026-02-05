package com.estrongs.fs.impl.i;

import com.estrongs.android.pop.netfs.INetRefreshCallback;

/* loaded from: classes.dex */
public class c implements INetRefreshCallback {

    /* renamed from: a, reason: collision with root package name */
    private String f3088a = null;

    public void a(String str) {
        this.f3088a = str;
    }

    @Override // com.estrongs.android.pop.netfs.INetRefreshCallback
    public void operation_end(Object obj) {
    }

    @Override // com.estrongs.android.pop.netfs.INetRefreshCallback
    public void operation_start() {
    }
}
