package com.estrongs.android.pop.app.imageviewer;

import android.graphics.BitmapFactory;
import com.estrongs.android.pop.app.imageviewer.BitmapManager;

/* loaded from: classes.dex */
class d {

    /* renamed from: a, reason: collision with root package name */
    public BitmapManager.State f993a;

    /* renamed from: b, reason: collision with root package name */
    public BitmapFactory.Options f994b;

    private d() {
        this.f993a = BitmapManager.State.ALLOW;
    }

    public String toString() {
        return "thread state = " + (this.f993a == BitmapManager.State.CANCEL ? "Cancel" : this.f993a == BitmapManager.State.ALLOW ? "Allow" : "?") + ", options = " + this.f994b;
    }
}
